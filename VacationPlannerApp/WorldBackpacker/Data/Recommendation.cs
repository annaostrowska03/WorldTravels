namespace WorldBackpacker.Data
{
    public class Recommendation
    {
        public int Id { get; set; }
        public string City { get; set; }
        public string Country { get; set; }
        public Continent Continent { get; set; }
        public float Temperature { get; set; }
        public Weather Weather { get; set; }
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
        public string? Subregion { get; set; }
        public CostSummary CostSummary { get; set; }
        public string? ImageUrl { get; set; }
    }
}
