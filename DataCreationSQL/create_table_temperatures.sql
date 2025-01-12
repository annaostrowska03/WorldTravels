CREATE TABLE cities_temperature (
    id INT PRIMARY KEY,
	Month INT not null,
    HalfOfMonth BIT not null, --0 if first half, 1 otherwise
    temp_morning FLOAT,
	temp_afternoon FLOAT,
	temp_night FLOAT,
	temp_evening FLOAT,
	wind_speed FLOAT,
	cloud_cover float,
	precipitation float,
    FOREIGN KEY (id) REFERENCES cities_to_recommend(id)
);