WITH RankedCities AS (
    SELECT
        cities_population.city,
        cities_population.country,
        cities_population.iso3,
        cities_population.population,
        cities_population.lat,
        cities_population.lng,
        cc.region,
        cc.[sub-region],
        cc.[intermediate-region],
        cc.image_url,
		cities_population.city_ascii,
        ROW_NUMBER() OVER (PARTITION BY cities_population.iso3 ORDER BY cities_population.population DESC) AS rank
    FROM
        cities_population
    JOIN
        countries_continents cc ON cities_population.iso3 = cc.[alpha-3]
)
INSERT INTO cities_to_recommend (city, country, population, lat, lng, region, [sub-region], [intermediate-region], image_url, city_ascii)
SELECT
    city,
    country,
    population,
    lat,
    lng,
    region,
    [sub-region],
    [intermediate-region],
    image_url,
	city_ascii
FROM
    RankedCities
WHERE
    rank <= 1
ORDER BY
    country, rank;

WITH RankedCities AS (
    SELECT
        cities_population.city,
        cities_population.country,
        cities_population.iso3,
        cities_population.population,
        cities_population.lat,
        cities_population.lng,
        cc.region,
        cc.[sub-region],
        cc.[intermediate-region],
        cc.image_url,
		cities_population.city_ascii,
        ROW_NUMBER() OVER (PARTITION BY cities_population.iso3 ORDER BY cities_population.population DESC) AS rank
    FROM
        cities_population
    JOIN
        countries_continents cc ON cities_population.iso3 = cc.[alpha-3]
)
INSERT INTO cities_to_recommend (city, country, population, lat, lng, region, [sub-region], [intermediate-region], image_url, city_ascii)
SELECT TOP 70
    city,
    country,
    population,
    lat,
    lng,
    region,
    [sub-region],
    [intermediate-region],
    image_url,
	city_ascii
FROM
    RankedCities
WHERE
    rank > 1
ORDER BY
    population;
