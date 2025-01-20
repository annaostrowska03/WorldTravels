namespace WorldBackpacker.Data
{
    public enum CostSummary
    //This enum is used to store the user's budget preferences (and Recommendations feature) for the trip.
    //These are only subjective costs based on the Cost of Living and Rent Indexes and data/opinions from the internet, they do not inlude the cost of the flight.
    {
        VeryLow,
        Low,
        Average,
        High,
        VeryHigh
    }
}