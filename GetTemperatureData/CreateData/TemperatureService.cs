using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics.Eventing.Reader;
using System.Linq;
using System.Net.Http;
using System.Runtime.InteropServices.ComTypes;
using System.Text.Json;
using System.Text.Json.Serialization;
using System.Threading.Tasks;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

public class TemperatureService
{
    private const string ApiKey = "ApiKey";
    private const string ApiUrl = "https://atlas.microsoft.com/weather/historical/normals/daily/json?";
    private readonly string _connectionString;
    private List<Tuple<double, double>> monthWeather;
    private IEnumerable<JToken> days;

    public TemperatureService(string connectionString)
    {
        _connectionString = connectionString;
    }

    public async Task UpdateWeatherDataAsync()
    {
        var cities = await GetCitiesAsync();
        foreach (var city in cities)
        {
            await ProcessCityWeatherData(city);
        }
    }

    private async Task<List<(int Id, float Lat, float Lon)>> GetCitiesAsync()
    {
        var cities = new List<(int, float, float)>();
        SqlConnection sqlConnection = new SqlConnection(_connectionString);
        SqlConnection connection = sqlConnection;
        await connection.OpenAsync();
        var deleteCommand = new SqlCommand("TRUNCATE TABLE cities_temperature", connection);
        int rowsDeleted = deleteCommand.ExecuteNonQuery();

        var command = new SqlCommand("SELECT TOP 50 id, lat, lng FROM cities_to_recommend", connection);
        var reader = await command.ExecuteReaderAsync();
        while (await reader.ReadAsync())
        {
            cities.Add((reader.GetInt32(0), Convert.ToSingle(reader.GetDouble(1)), Convert.ToSingle(reader.GetDouble(2))));
        }
        return cities;
    }

    private async Task ProcessCityWeatherData((int Id, float Lat, float Lon) city)
    {
        var now = DateTime.Now;

        for (int month = 1; month <= 12; month++)
        {
            var dates = GetDates(now, month);

            var weeksAverage = await FetchWeatherDataAsync(city.Lat, city.Lon, dates[0].Item1, dates[0].Item2);
            for (int w = 0; w < 5; w++)
            {
                await SaveWeatherDataAsync(city.Id, month, w, weeksAverage[w].Item1, weeksAverage[w].Item2);
            }
        }
    }

    private List<Tuple<DateTime, DateTime>> GetDates(DateTime now, int month)
    {
        var dates = new List<Tuple<DateTime, DateTime>>();
        var dayRangeStart = new DateTime(now.Year, month, 1);
        var dayRangeEnd = new DateTime(now.Year, month, DateTime.DaysInMonth(now.Year, month));

        dates.Add(Tuple.Create(dayRangeStart, dayRangeEnd));

        return dates;
    }

    private async Task <List<Tuple<double, double>>> FetchWeatherDataAsync(float lat, float lon, DateTime startDate, DateTime endDate)
    {
        string formattedStartDate = startDate.ToString("yyyy-MM-dd");
        string formattedEndDate = endDate.ToString("yyyy-MM-dd");
        var url = $"{ApiUrl}subscription-key={ApiKey}&api-version=1.1&query={lat},{lon}&startDate={formattedStartDate}&endDate={formattedEndDate}";
        var client = new HttpClient();
        var response = await client.GetStringAsync(url);
        JObject weatherData = JObject.Parse(response);
        var results = weatherData["results"];
        monthWeather = new List<Tuple<double, double>>();
        try
        {
            for(int w=0; w<5; w++)
            {
                if (startDate.Month == 2 && w == 4)
                {
                    monthWeather.Add(Tuple.Create((double)0, (double)0));
                    return monthWeather;
                }
                days = results.Skip(w * 7).Take(7);

                double avgTemp = days.Average(day => (day["temperature"]?["average"]?["value"]?.Value<double?>() ?? 0));
                double totalPrecip = days.Sum(day => (day["precipitation"]?["value"]?.Value<double?>() ?? 0));

                monthWeather.Add(Tuple.Create(avgTemp, totalPrecip));

            }


            return monthWeather;
        }
        catch
        {
            return null;
        }
    }

    private async Task SaveWeatherDataAsync(int cityId, int month, int weekOfMonth, double Temperature, double Precipitation)
    {
        SqlConnection connection = new SqlConnection(_connectionString);
        await connection.OpenAsync();

        var command = new SqlCommand(
            "INSERT INTO cities_temperature (id, month, weekOfMonth, temperature, precipitation) " +
            "VALUES (@Id, @Month, @weekOfMonth, @Temperature, @Precipitation)", connection);

        command.Parameters.AddWithValue("@Id", cityId);
        command.Parameters.AddWithValue("@month", month);
        command.Parameters.AddWithValue("@weekOfMonth", weekOfMonth);
        command.Parameters.AddWithValue("@Temperature", Temperature);
        command.Parameters.AddWithValue("@Precipitation", Precipitation);

        await command.ExecuteNonQueryAsync();

    }
}
