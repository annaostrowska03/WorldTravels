using Microsoft.Data.SqlClient;
using WorldBackpacker.Data;
namespace WorldBackpacker.Services
{
    public class GetRecommendedCitiesService
        //This class is used to get the recommended cities based on the user's preferences and the data in the database.
    {
        private readonly string _connectionString; //connection string to the database
        private List<Recommendation> recommendations = new List<Recommendation>(); //list of recommended cities

        public GetRecommendedCitiesService(string connectionString)
        {
            this._connectionString = connectionString;
        }


        public async Task<List<Recommendation>> GetRecommendations(Preference preference)
        {
            DateTime startDate = preference.StartDate; //start date of the trip
            DateTime endDate = preference.EndDate; //end date of the trip
            int startWeek = (int)((startDate.Day -1) / 7); //week of the month {1,2,3,4,5} ofthe start date
            int endWeek = (int)((endDate.Day -1 )/ 7); //week of the month {1,2,3,4,5} of the end date
            int startMonth = (int)startDate.Month;
            int endMonth = (int)endDate.Month;
            int startYear = (int)startDate.Year;
            int endYear = (int)endDate.Year; 

            using (var connection = new SqlConnection(_connectionString))
            {
                await connection.OpenAsync(); //open the connection to the database

                var query = "SELECT * FROM cities_activities t2 " +
                            "JOIN cities_to_recommend t1 on t1.city = t2.city and t1.country=t2.country"; //get all the cities and their activities from the database

                //join the cities to recommend with the cities activities table based on user activities choices
                if (preference.Skiing) query += " AND t2.skiing = 1";
                if (preference.Sightseeing) query += " AND t2.sightseeing = 1";
                if (preference.Beach) query += " AND t2.beach = 1";
                if (preference.Lakes) query += " AND t2.lakes = 1";
                if (preference.Kayaking) query += " AND t2.kayaking = 1";
                if (preference.Sailing) query += " AND t2.sailing = 1";
                if (preference.Ocean) query += " AND t2.ocean = 1";
                if (preference.Sea) query += " AND t2.sea = 1";
                if (preference.Hiking) query += " AND t2.hiking = 1";
                if (preference.Nature) query += " AND t2.nature = 1";
                query += $" WHERE ({MapBudget(preference.Budget)})"; //filter the cities based on the user's budget

                query += $" AND {MapContinents(preference.Continent)}"; //filter the cities based on the user's continent choices

                if (startYear == endYear) //chose only the cities that have data about the temperature for the weeks of the trip
                {
                    query += @" AND EXISTS (SELECT 1 FROM cities_temperature t3 WHERE t3.id = t1.id
                    AND (
                        (t3.month = @startMonth AND @startMonth<@endMonth AND t3.weekOfMonth BETWEEN @startWeek AND 4) 
                        OR
                        (t3.month = @endMonth AND @startMonth<@endMonth AND t3.weekOfMonth BETWEEN 0 AND @endWeek)
                        OR
                        (t3.month >@startMonth AND t3.month<@endMonth)
                        OR
                        (@startMonth = @endMonth AND month BETWEEN @startMonth AND @endMonth AND weekOfMonth BETWEEN @startWeek AND @endWeek)   
                    ))";
                }
                else
                {
                    if (endYear == startYear - 1)
                    {

                        query += @" AND EXISTS (SELECT 1 FROM cities_temperature t3 WHERE t3.id = t1.id
                            AND (
                                (t3.month = @startMonth AND t3.weekOfMonth BETWEEN @startWeek AND 4) 
                                OR
                                (t3.month = @endMonth AND t3.weekOfMonth BETWEEN 0 AND @endWeek)
                                OR
                                (t3.month >@startMonth OR t3.month<@endMonth)))";
                    }
                    else { query += " AND EXISTS (SELECT 1 FROM cities_temperature t3 WHERE t3.id = t1.id)"; }
                }





                var command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@startMonth", startMonth);
                command.Parameters.AddWithValue("@endMonth", endMonth);
                command.Parameters.AddWithValue("@startWeek", startWeek);
                command.Parameters.AddWithValue("@endWeek", endWeek);
                command.Parameters.AddWithValue("@startYear", startYear);
                command.Parameters.AddWithValue("@endYear", endYear);

                using (var reader = await command.ExecuteReaderAsync()) //execute the query and get the results
                {
                    while (await reader.ReadAsync())
                    {
                        float avgTemperature = await GetAverageTemperature((int)reader["id"], startMonth, endMonth, startWeek, endWeek, startYear, endYear, connection); //get the average temperature for the weeks of the trip
                        Weather weather = MapWeather(avgTemperature); //map the temperature to the weather type


                        if (!preference.Weather.Any() || preference.Weather.Contains(weather)) //if the user has not chosen any weather preferences or the weather type is in the user's preferences
                        {
                            Recommendation recommendation = new Recommendation //create a new recommendation object
                            {
                                Id = Convert.ToInt32(reader["id"]),
                                City = reader["city"].ToString(),
                                Country = reader["country"].ToString(),
                                Continent = ContinentToEnum(reader["region"].ToString()), //map the continent to the enum
                                Skiing = Convert.ToBoolean(reader["skiing"]),
                                Sightseeing = Convert.ToBoolean(reader["sightseeing"]),
                                Beach = Convert.ToBoolean(reader["beach"]),
                                Lakes = Convert.ToBoolean(reader["lakes"]),
                                Kayaking = Convert.ToBoolean(reader["kayaking"]),
                                Sailing = Convert.ToBoolean(reader["sailing"]),
                                Ocean = Convert.ToBoolean(reader["ocean"]),
                                Sea = Convert.ToBoolean(reader["sea"]),
                                Hiking = Convert.ToBoolean(reader["hiking"]),
                                Nature = Convert.ToBoolean(reader["nature"]),
                                Latitude = Convert.ToSingle(reader["lat"]),
                                Longitude = Convert.ToSingle(reader["lng"]),
                                Subregion = reader["sub-region"] != null ? reader["sub-region"].ToString() : "", //get the subregion if it exists
                                CostSummary = MapCost(reader["cost_summary"].ToString()), //map the cost summary to the enum
                                ImageUrl = reader["image_url"] != null ? reader["image_url"].ToString() : "", //get the image url if it exists
                                StartDate = startDate,
                                EndDate = endDate,
                                Temperature = avgTemperature,
                                Weather = weather
                            };


                            
                            recommendations.Add(recommendation); //add the recommendation to the list
                        }
                    }
                }
            }

            return recommendations;

         }
        private string MapBudget(CostSummary budget) 
        {
       
            string budgetString = budget switch //map the budget to the string to match the database values (return the cities that have the cost_summary value equal or lower to the user's budget)
            {
                CostSummary.VeryLow => "'very low'",
                CostSummary.Low => "'low', 'very low'",
                CostSummary.Average => "'average', 'low', 'very low'",
                CostSummary.High => "'high', 'average', 'low', 'very low'", 
                CostSummary.VeryHigh => "'very high', 'high', 'average', 'low', 'very low'", //if the user has chosen the highest budget, return all the cities
                _ => throw new ArgumentException($"Invalid budget value: {budget}")
            };

            return $"t1.cost_summary IN ({budgetString})";
        }
        private CostSummary MapCost(string cost_summary) //map the cost summary to the enum to transfer the data from the database to the Recommendation object
        { 
            return cost_summary switch
            {
                "very low" => CostSummary.VeryLow,
                "low" => CostSummary.Low,
                "average" => CostSummary.Average,
                "high" => CostSummary.High,
                "very high" => CostSummary.VeryHigh,
                _ => throw new ArgumentException("Invalid cost summary value", nameof(cost_summary))
            };
        }
        private Continent ContinentToEnum(string continent) //map the continent to the enum to transfer the data from the database to the Recommendation object
        {
            return continent switch
            {
                "Africa" => Continent.Africa,
                "Europe" => Continent.Europe,
                "Oceania" => Continent.OceaniaAustralia,
                "Americas" => Continent.Americas,
                "Asia" => Continent.Asia,
                _ => throw new ArgumentException("Invalid continent value", nameof(continent))
            };
        }


        private string MapContinents(List<Continent> continents) //map the continents to the string to match the database values
        {
            if (continents == null || !continents.Any()) //if the user has not chosen any continents, return all the cities
            {
                return "1=1";
            }

            var regionFilters = new List<string>();

            foreach (var continent in continents)
            {
                switch (continent)
                {
                    case Continent.Europe:
                        regionFilters.Add("(region = 'Europe')");
                        break;
                    case Continent.Asia:
                        regionFilters.Add("(region = 'Asia')");
                        break;
                    case Continent.Africa:
                        regionFilters.Add("(region = 'Africa')");
                        break;
                    case Continent.NorthAmerica:
                        regionFilters.Add("(region = 'Americas' AND [sub-region] = 'Northern America')"); //to match the database values
                        break;
                    case Continent.SouthAmerica:
                        regionFilters.Add("(region = 'Americas' AND [sub-region] = 'Latin America and the Caribbean' AND [intermediate-region]='South America')");
                        break;
                    case Continent.OceaniaAustralia:
                        regionFilters.Add("(region = 'Oceania')");
                        break;
                    case Continent.Caribbean:
                        regionFilters.Add("(region = 'Americas' AND [sub-region] = 'Latin America and the Caribbean' AND [intermediate-region]='Caribbean')");
                        break;
                }
            }

            return string.Join(" OR ", regionFilters); //we take the cities that are in the chosen continents
        }
        private async Task<float> GetAverageTemperature(int id, int startMonth, int endMonth, int startWeek, int endWeek, int startYear, int endYear, SqlConnection connection)
        //get the average temperature for the weeks of the trip
        {
            var tempQuery = @"
            SELECT AVG(temperature) AS avg_temperature
            FROM cities_temperature t3
            WHERE id=@id";
            if (startYear == endYear)
            {
                tempQuery += @" AND (
                        (t3.month = @startMonth AND @startMonth<@endMonth AND t3.weekOfMonth BETWEEN @startWeek AND 4) 
                        OR
                        (t3.month = @endMonth AND @startMonth<@endMonth AND t3.weekOfMonth BETWEEN 0 AND @endWeek)
                        OR
                        (t3.month >@startMonth AND t3.month<@endMonth)
                        OR
                        (@startMonth = @endMonth AND t3.month BETWEEN @startMonth AND @endMonth AND weekOfMonth BETWEEN @startWeek AND @endWeek)   
                    )";
            }
            else
            {
                if (endYear == startYear - 1)
                {

                    tempQuery += @" AND (
                                (t3.month = @startMonth AND t3.weekOfMonth BETWEEN @startWeek AND 4) 
                                OR
                                (t3.month = @endMonth AND t3.weekOfMonth BETWEEN 0 AND @endWeek)
                                OR
                                (t3.month >@startMonth OR t3.month<@endMonth))";
                }
            }

            using (var tempCommand = new SqlCommand(tempQuery, connection)) //execute the query and get the results
            {
                tempCommand.Parameters.AddWithValue("@id", id);
                tempCommand.Parameters.AddWithValue("@startMonth", startMonth);
                tempCommand.Parameters.AddWithValue("@endMonth", endMonth);
                tempCommand.Parameters.AddWithValue("@startWeek", startWeek);
                tempCommand.Parameters.AddWithValue("@endWeek", endWeek);

                var result = await tempCommand.ExecuteScalarAsync(); 
                var resultValue = result == DBNull.Value ? 0f : Convert.ToSingle(result);
                return (float)Math.Round(resultValue, 1); //return the average temperature rounded to one decimal place
            }
        }
        private Weather MapWeather(float temperature)   //map the temperature to the weather type based on the average temperature
        {
            if (temperature > 32)
            {
                return Weather.SuperHot;
            }
            else if (temperature >= 23)
            {
                return Weather.Hot;
            }
            else if (temperature >= 15)
            {
                return Weather.Warm;
            }
            else if (temperature >= 10)
            {
                return Weather.Cool;
            }
            else if (temperature >= 0)
            {
                return Weather.Cold;
            }
            else if (temperature >= -10)
            {
                return Weather.Freezing;
            }
            else
            {
                return Weather.SuperFreezing;
            }
        }



    }
}
