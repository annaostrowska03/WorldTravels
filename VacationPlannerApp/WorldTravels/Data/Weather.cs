namespace WorldBackpacker.Data
{
    public enum Weather
    //This enum represents the weather types, calculated based on the average temperature in Celsius during the weeks of the trip.
    {
        SuperHot, /*>32 celsius degrees*/
        Hot, /*23-32 celsius degrees*/
        Warm, /*15-23 celsius degrees*/
        Cool, /*10-15 celsius degrees*/
        Cold, /*0-10 celsius degrees*/
        Freezing,/*-10-0 celsius degrees*/
        SuperFreezing /*<-10 celsius degrees*/
    }
}