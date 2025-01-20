namespace WorldBackpacker.Data
{
    public enum Continent
    // The possible choices for the continent (region) based on how the database is structured
    {
        Europe,
        Asia,
        Africa,
        NorthAmerica,
        SouthAmerica,
        OceaniaAustralia,
        Caribbean,
        Americas //not a choice but it is easier to store Americas in Recommendation as "Americas" (and etc. NorthAmerica" as subregion), becasue of how the data is stored in the database
    }
}