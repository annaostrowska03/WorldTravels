using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Net.Http;
using System.Text.Json;
using System.Threading.Tasks;
using System.Xml.Serialization;
using static TemperatureService;

class Program
{
    static async Task Main(string[] args)
    {
        var connectionString = "Server=windows-ania\\MSSQLSERVER2;Database=vacation_cities;User Id=sa;Password=ania1111;";
        var temperatureService = new TemperatureService(connectionString);
        await temperatureService.UpdateWeatherDataAsync();
        Console.WriteLine("Weather data update complete.");
    }
}



