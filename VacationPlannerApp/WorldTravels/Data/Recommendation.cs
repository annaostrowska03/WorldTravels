namespace WorldBackpacker.Data
{
    public class Recommendation
    // The class that represents the recommendation city with all the necessary information, chosen by filtering the cities in the database based on the user's preferences.
    {
        public int Id { get; set; }
        public string City { get; set; }
        public string Country { get; set; }
        public Continent Continent { get; set; }
        public float Temperature { get; set; } //the avg temperature in Celsius during the weeks of the trip, based on historic data in given lng and lat 
        public Weather Weather { get; set; } //weather type based on the temperature
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public bool Skiing { get; set; }
        public bool Sightseeing { get; set; }
        public bool Beach { get; set; }
        public bool Lakes { get; set; }
        public bool Kayaking { get; set; }
        public bool Sailing { get; set; }
        public bool Ocean { get; set; }
        public bool Sea { get; set; }
        public bool Hiking { get; set; }
        public bool Nature { get; set; }
        public float Latitude { get; set; }
        public float Longitude { get; set; }
        public string? Subregion { get; set; } //smaller than Continent
        public CostSummary CostSummary { get; set; } //subjective costs of the trip based on the Cost of Living and Rent Indexes and data/opinions from the internet, they do not inlude the cost of the flight, only the category, e.g. "VeryLow"
        public string? ImageUrl { get; set; } //url to the flag picture of the country
    }
}
