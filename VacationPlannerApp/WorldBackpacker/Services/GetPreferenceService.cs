using System;
using System.Collections.Generic;
using System.Linq;
using WorldBackpacker.Data;

namespace WorldBackpacker.Services
{
    public class GetPreferenceService
    {
        public Preference GetPreferences(Choice choice)
        {
            List<Continent> continents = choice.Continents?
                .Select(MapContinent)
                .ToList() ?? new List<Continent>
                {
                    Continent.Asia,
                    Continent.Europe,
                    Continent.Africa,
                    Continent.NorthAmerica,
                    Continent.Caribbean,
                    Continent.SouthAmerica,
                    Continent.OceaniaAustralia
                };
            List<Weather> weatherPreferences = choice.Weather?
                .Select(MapWeather)
                .ToList() ?? new List<Weather>
                {
                    Weather.SuperHot,
                    Weather.Hot,
                    Weather.Warm,
                    Weather.Cool,
                    Weather.Cold,
                    Weather.Freezing,
                    Weather.SuperFreezing
                };

            var a = continents;
            return new Preference
            {
                Continent = continents,
                Skiing = choice.Activities?.Contains("Skiing") ?? false,
                Sightseeing = choice.Activities?.Contains("Sightseeing") ?? false,
                Beach = choice.Activities?.Contains("Beach") ?? false,
                Lakes = choice.Activities?.Contains("Lakes") ?? false,
                Kayaking = choice.Activities?.Contains("Kayaking") ?? false,
                Sailing = choice.Activities?.Contains("Sailing") ?? false,
                Ocean = choice.Activities?.Contains("Ocean") ?? false,
                Sea = choice.Activities?.Contains("Sea") ?? false,
                Hiking = choice.Activities?.Contains("Hiking") ?? false,
                Nature = choice.Activities?.Contains("Nature") ?? false,
                Budget = MapBudget(choice.Budget),
                StartDate = choice.StartDate, 
                EndDate = choice.EndDate, 
                Weather = weatherPreferences
            };
        }

        private Continent MapContinent(string continent)
        {
            return continent switch
            {
                "Asia" => Continent.Asia,
                "Europe" => Continent.Europe,
                "Africa" => Continent.Africa,
                "Northern America" => Continent.NorthAmerica,
                "Caribbean" => Continent.Caribbean,
                "South America" => Continent.SouthAmerica,
                "Oceania and Australia" => Continent.OceaniaAustralia,
                _ => throw new ArgumentException($"Unknown continent: {continent}")
            };
        }

        private Weather MapWeather(string weather)
        {
            return weather switch
            {
                "Very Hot (>32°C)" => Weather.SuperHot,
                "Hot (23°C-32°C)" => Weather.Hot,
                "Warm (15°C-23°C)" => Weather.Warm,
                "Cool (10°C-15°C)" => Weather.Cool,
                "Cold (0°C-10°C)" => Weather.Cold,
                "Freezing (-10°C - 0°C)" => Weather.Freezing,
                "Super Freezing (<-10°C)" => Weather.SuperFreezing,
                _ => throw new ArgumentException($"Unknown weather preference: {weather}")
            };
        }

        private CostSummary MapBudget(int? budget)
        {
            return budget switch
            {
                1 => CostSummary.VeryLow,
                2 => CostSummary.Low,
                3 => CostSummary.Average,
                4 => CostSummary.High,
                5 => CostSummary.VeryHigh,
                _ => throw new ArgumentException($"Unknown budget: {budget}")
            };
        }
    }

}
