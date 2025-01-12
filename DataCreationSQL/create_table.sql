CREATE TABLE cities_to_recommend (
    city NVARCHAR(255),
    country NVARCHAR(255),
    population BIGINT,
    lat FLOAT,
    lng FLOAT,
    region NVARCHAR(255),
    [sub-region] NVARCHAR(255),
    [intermediate-region] NVARCHAR(255),
    image_url NVARCHAR(2083), 
	city_ascii NVARCHAR(255)
);
