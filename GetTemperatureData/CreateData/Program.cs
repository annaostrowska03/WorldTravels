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
        var connectionString = "connectionString";
        var temperatureService = new TemperatureService(connectionString);
        await temperatureService.UpdateWeatherDataAsync();
        Console.WriteLine("Weather data update complete.");
    }
}



