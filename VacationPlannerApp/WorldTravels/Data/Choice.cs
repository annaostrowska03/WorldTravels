namespace WorldBackpacker.Data
{
    public class Choice
    //This class is used to store the user's preferences for the trip.
    {
        public int? Budget { get; set; }
        public List<string> Activities { get; set; } = new List<string>();
        public List<string> Continents { get; set; } = new List<string>();
        public List<string> Weather { get; set; } = new List<string>();
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
    }
   
}
