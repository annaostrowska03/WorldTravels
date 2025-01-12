using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using Microsoft.Data.SqlClient;

namespace WorldBackpacker.Services
{ 
    public class LocationService
    {
        private readonly string _connectionString;

        public LocationService(string connectionString)
        {
            _connectionString = connectionString;
        }

        public async Task<List<(float Latitude, float Longitude)>> GetCoordinates()
        {
            var coordinates = new List<(float Latitude, float Longitude)>();

            using (var connection = new SqlConnection(_connectionString))
            {
                await connection.OpenAsync();
                var command = new SqlCommand("SELECT lat, lng FROM cities_to_recommend", connection);
                using (var reader = await command.ExecuteReaderAsync())
                {
                    while (await reader.ReadAsync())
                    {
                        coordinates.Add((Convert.ToSingle(reader["lat"]), Convert.ToSingle(reader["lng"])));
                    }
                }
            }

            return coordinates;
        }
    }
}
