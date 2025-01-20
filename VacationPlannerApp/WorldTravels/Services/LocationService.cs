using Microsoft.Data.SqlClient;

namespace WorldBackpacker.Services
{ 
    public class LocationService
    // This class is responsible for fetching the coordinates of the cities from the database.
    {
        private readonly string _connectionString; //connection string to the database

        public LocationService(string connectionString)
        {
            _connectionString = connectionString;
        }

        public async Task<List<(float Latitude, float Longitude)>> GetCoordinates()
        {
            var coordinates = new List<(float Latitude, float Longitude)>(); //list of coordinates of the cities

            using (var connection = new SqlConnection(_connectionString))
            {
                await connection.OpenAsync();
                var command = new SqlCommand("SELECT lat, lng FROM cities_to_recommend", connection); //query to get the coordinates of the cities possible to recommend from the database 
                using (var reader = await command.ExecuteReaderAsync())
                {
                    while (await reader.ReadAsync())
                    { 
                        coordinates.Add((Convert.ToSingle(reader["lat"]), Convert.ToSingle(reader["lng"]))); //add the coordinates to the list
                    }
                }
            }

            return coordinates; //return the list of coordinates
        }
    }
}
