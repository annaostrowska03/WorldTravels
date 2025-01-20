namespace WorldBackpacker.Data
{
    public class Preference
    // This class is used to store the user's preferences, chosen by the user in the form.
    {
        public List<Continent> Continent { get; set; } = new List<Continent>();
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
        public CostSummary Budget { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public List<Weather> Weather { get; set; } = new List<Weather>();
    }
}
