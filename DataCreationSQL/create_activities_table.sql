/*ALTER TABLE cities_to_recommend
ADD id INT IDENTITY(1,1) PRIMARY KEY;
*/
CREATE TABLE cities_activities (
	id INT IDENTITY(1,1) PRIMARY KEY,
    city VARCHAR(255),
    country VARCHAR(255),
    skiing BIT,
    sightseeing BIT,
    beach BIT,
    lakes BIT,
    kayaking BIT,
    sailing BIT,
    ocean BIT,
    sea BIT,
    hiking BIT,
    nature BIT)
/*


INSERT INTO cities_activities (country, city, skiing, sightseeing, beach, lakes, kayaking, sailing, ocean, sea, hiking, nature)
VALUES
    ('Afghanistan', 'Kabul', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
    ('Afghanistan', 'Kandahar', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
    ('Afghanistan', 'Herat', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
    ('Bahrain', 'Manama', 0, 1, 1, 0, 1, 1, 0, 1, 0, 0),
    ('Bahrain', 'Al Mu?arraq', 0, 1, 1, 0, 1, 1, 0, 1, 0, 0),
    ('Bahrain', 'Madinat ?amad', 0, 1, 1, 0, 1, 1, 0, 1, 0, 0),
    ('Chile', 'Santiago', 0, 1, 0, 1, 1, 0, 0, 0, 1, 1),
    ('Chile', 'Concepción', 0, 1, 0, 1, 1, 0, 0, 0, 1, 1),
    ('Chile', 'Puente Alto', 0, 1, 0, 1, 1, 0, 0, 0, 1, 1),
    ('Aruba', 'Oranjestad', 0, 1, 1, 0, 1, 1, 0, 1, 0, 0),
    ('Aruba', 'Tanki Leendert', 0, 1, 1, 0, 1, 1, 0, 1, 0, 0),
    ('Albania', 'Tirana', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Albania', 'Durrës', 0, 1, 1, 0, 1, 1, 0, 1, 0, 1),
    ('Austria', 'Vienna', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Austria', 'Graz', 0, 1, 0, 1, 1, 0, 0, 0, 1, 1),
    ('Austria', 'Linz', 0, 1, 0, 1, 1, 0, 0, 0, 1, 1),
    ('Angola', 'Luanda', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
    ('Angola', 'Cacuaco', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
    ('Angola', 'Cazenga', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
    ('Armenia', 'Yerevan', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Armenia', 'Gyumri', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Armenia', 'Vanadzor', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Bahamas, The', 'Nassau', 0, 1, 1, 0, 1, 1, 0, 1, 0, 0),
    ('Bahamas, The', 'Lucaya', 0, 1, 1, 0, 1, 1, 0, 1, 0, 0),
    ('Bahamas, The', 'Freeport City', 0, 1, 1, 0, 1, 1, 0, 1, 0, 0),
    ('Costa Rica', 'San José', 0, 1, 0, 1, 1, 0, 0, 0, 1, 1),
    ('Costa Rica', 'San Marcos', 0, 1, 0, 1, 1, 0, 0, 0, 1, 1),
    ('Costa Rica', 'San Ramón', 0, 1, 0, 1, 1, 0, 0, 0, 1, 1),
    ('Albania', 'Vlorë', 0, 1, 1, 0, 1, 1, 0, 1, 0, 1),
    ('Antigua and Barbuda', 'Saint John’s', 0, 1, 1, 0, 1, 1, 0, 1, 0, 1),
    ('Bosnia and Herzegovina', 'Sarajevo', 0, 1, 0, 1, 1, 0, 0, 0, 1, 1),
    ('Bonaire, Sint Eustatius, and Saba', 'Kralendijk', 0, 1, 1, 0, 1, 1, 0, 1, 0, 1),
    ('Bonaire, Sint Eustatius, and Saba', 'Oranjestad', 0, 1, 1, 0, 1, 1, 0, 1, 0, 1),
    ('Bonaire, Sint Eustatius, and Saba', 'The Bottom', 0, 1, 1, 0, 1, 1, 0, 1, 0, 1),
    ('Bulgaria', 'Sofia', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Andorra', 'Andorra la Vella', 0, 1, 0, 1, 1, 0, 0, 0, 1, 1),
    ('Andorra', 'Escaldes-Engordany', 0, 1, 0, 1, 1, 0, 0, 0, 1, 1),
    ('Andorra', 'Encamp', 0, 1, 0, 1, 1, 0, 0, 0, 1, 1),
    ('Argentina', 'Buenos Aires', 0, 1, 1, 0, 1, 1, 0, 1, 0, 1),
    ('Argentina', 'Córdoba', 0, 1, 0, 1, 1, 0, 0, 0, 1, 1),
    ('Argentina', 'Rosario', 0, 1, 0, 1, 1, 0, 0, 0, 1, 1);


INSERT INTO cities_activities (country, city, skiing, sightseeing, beach, lakes, kayaking, sailing, ocean, sea, hiking, nature)
VALUES
    ('Burundi', 'Bujumbura', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
    ('Burundi', 'Gitega', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
    ('Burundi', 'Ngozi', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
    ('Bulgaria', 'Varna', 0, 1, 1, 0, 1, 1, 0, 1, 0, 1),
    ('Bulgaria', 'Plovdiv', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Brunei', 'Bandar Seri Begawan', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
    ('Brunei', 'Seria', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
    ('Bosnia and Herzegovina', 'Banja Luka', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Bosnia and Herzegovina', 'Bijeljina', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Saint Barthelemy', 'Gustavia', 0, 1, 1, 0, 1, 1, 0, 1, 0, 0),
    ('Bhutan', 'Thimphu', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Anguilla', 'The Valley', 0, 1, 1, 0, 1, 1, 0, 1, 0, 1),
    ('United Arab Emirates', 'Dubai', 0, 1, 1, 0, 1, 1, 0, 1, 0, 1),
    ('United Arab Emirates', 'Abu Dhabi', 0, 1, 1, 0, 1, 1, 0, 1, 0, 1),
    ('Cayman Islands', 'George Town', 0, 1, 1, 0, 1, 1, 0, 1, 0, 1),
    ('Germany', 'Berlin', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Germany', 'Stuttgart', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('American Samoa', 'Pago Pago', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Australia', 'Melbourne', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Australia', 'Sydney', 0, 1, 1, 0, 1, 1, 0, 1, 0, 1),
    ('Benin', 'Cotonou', 0, 1, 1, 0, 1, 1, 0, 1, 0, 1),
    ('Benin', 'Abomey-Calavi', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Benin', 'Godome', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
    ('Belgium', 'Brussels', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Belgium', 'Antwerp', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Belgium', 'Gent', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('China', 'Guangzhou', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('China', 'Shanghai', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('China', 'Beijing', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Bhutan', 'Phuntsholing', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Bhutan', 'Paro', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Switzerland', 'Zürich', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Brunei', 'Kampong Tunah Jambu', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
    ('Congo (Kinshasa)', 'Kinshasa', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Congo (Kinshasa)', 'Mbuji-Mayi', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Congo (Kinshasa)', 'Kananga', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Djibouti', 'Djibouti', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Djibouti', 'Arta', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Djibouti', 'Ali Sabieh', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Algeria', 'Algiers', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Botswana', 'Gaborone', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Botswana', 'Francistown', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Botswana', 'Molepolole', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('United Arab Emirates', 'Sharjah', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Azerbaijan', 'Baku', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Azerbaijan', 'Sumqayit', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Cabo Verde', 'Mindelo', 0, 1, 1, 0, 1, 1, 0, 1, 0, 1),
    ('Cabo Verde', 'Praia', 0, 1, 1, 0, 1, 1, 0, 1, 0, 1),
    ('Cabo Verde', 'Sao Filipe', 0, 1, 1, 0, 1, 1, 0, 1, 0, 1),
    ('Cyprus', 'Nicosia', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Switzerland', 'Geneva', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Switzerland', 'Basel', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Cameroon', 'Douala', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Cyprus', 'Limassol', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Cyprus', 'Larnaca', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Czechia', 'Prague', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Azerbaijan', 'Gəncə', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Bangladesh', 'Dhaka', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Bangladesh', 'Chattogram', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Australia', 'Brisbane', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Belarus', 'Minsk', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Belarus', 'Homyel’', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Cameroon', 'Yaoundé', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Cameroon', 'Bamenda', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Ecuador', 'Guayaquil', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Burkina Faso', 'Ouagadougou', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Burkina Faso', 'Bobo-Dioulasso', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Burkina Faso', 'Koudougou', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Belarus', 'Vitsyebsk', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Belize', 'Belize City', 0, 1, 1, 0, 1, 1, 0, 1, 0, 1),
    ('Belize', 'San Ignacio', 0, 1, 1, 0, 1, 1, 0, 1, 0, 1),
    ('Bangladesh', 'Gazipura', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Brazil', 'Sao Paulo', 0, 1, 1, 0, 1, 1, 0, 1, 0, 1),
    ('Brazil', 'Rio de Janeiro', 0, 1, 1, 0, 1, 1, 0, 1, 0, 1),
    ('Belize', 'Belmopan', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1);

INSERT INTO cities_activities (country, city, skiing, sightseeing, beach, lakes, kayaking, sailing, ocean, sea, hiking, nature)
VALUES
    ('Bolivia', 'Santa Cruz de la Sierra', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Bolivia', 'La Paz', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Czechia', 'Brno', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Czechia', 'Ostrava', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Guernsey', 'Saint Peter Port', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Ecuador', 'Quito', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Ecuador', 'Cuenca', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Egypt', 'Cairo', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Algeria', 'Constantine', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Algeria', 'Batna', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('France', 'Paris', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Guernsey', 'Saint Sampson', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Ghana', 'Kumasi', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Ghana', 'Boankra', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Bermuda', 'Hamilton', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Christmas Island', 'Flying Fish Cove', 0, 1, 1, 0, 1, 1, 0, 1, 0, 1),
    ('Denmark', 'Copenhagen', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Bolivia', 'Santa Cruz', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Central African Republic', 'Bangui', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Central African Republic', 'Bimo', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Ghana', 'Accra', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Gibraltar', 'Gibraltar', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Gambia, The', 'Banjul', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Denmark', 'Aarhus', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Denmark', 'Odense', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Grenada', 'Saint David’s', 0, 1, 1, 0, 1, 1, 0, 1, 0, 1),
    ('Grenada', 'Saint George’s', 0, 1, 1, 0, 1, 1, 0, 1, 0, 1),
    ('French Guiana', 'Cayenne', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('French Guiana', 'Saint-Laurent-du-Maroni', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Central African Republic', 'Mambéré', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Congo (Brazzaville)', 'Brazzaville', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Congo (Brazzaville)', 'Pointe-Noire', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('French Guiana', 'Kourou', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Jersey', 'Saint Helier', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Japan', 'Tokyo', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Japan', 'Osaka', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Gambia, The', 'Serekunda', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Gambia, The', 'Brikama', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Guyana', 'Georgetown', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Guyana', 'Linden', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Guyana', 'New Amsterdam', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Hungary', 'Budapest', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Hungary', 'Debrecen', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Congo (Brazzaville)', 'Tchibota', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Eritrea', 'Asmara', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Eritrea', 'Keren', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Eritrea', 'Gwelej', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Finland', 'Helsinki', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Finland', 'Tampere', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Egypt', 'Giza', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Egypt', 'Alexandria', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Estonia', 'Tallinn', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Estonia', 'Tartu', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Estonia', 'Narva', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('United Kingdom', 'London', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Finland', 'Espoo', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1);
	
	INSERT INTO cities_activities (country, city, skiing, sightseeing, beach, lakes, kayaking, sailing, ocean, sea, hiking, nature)
VALUES
	    ('Iceland', 'Reykjavík', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Iceland', 'Kópavogur', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Hungary', 'Székesfehérvár', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Indonesia', 'Jakarta', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Indonesia', 'Surabaya', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Iceland', 'Hafnarfjörður', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Kenya', 'Nairobi', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Kenya', 'Mombasa', 0, 1, 1, 0, 1, 1, 0, 1, 0, 1),
    ('Kenya', 'Nakuru', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Macau', 'Macau', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Mexico', 'Mexico City', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Mexico', 'Guadalajara', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Côte d’Ivoire', 'Abidjan', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Côte d’Ivoire', 'Yopougon', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Côte d’Ivoire', 'Cocody', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Cuba', 'Havana', 0, 1, 1, 0, 1, 1, 0, 1, 0, 1),
    ('Indonesia', 'Medan', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Italy', 'Rome', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Italy', 'Milan', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Italy', 'Naples', 0, 1, 1, 0, 1, 1, 0, 1, 0, 1),
    ('Germany', 'Munich', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Spain', 'Madrid', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Spain', 'Barcelona', 0, 1, 1, 0, 1, 1, 0, 1, 0, 1),
    ('Cuba', 'Santiago de Cuba', 0, 1, 1, 0, 1, 1, 0, 1, 0, 1),
    ('Cuba', 'Holguín', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Fiji', 'Suva', 0, 1, 1, 0, 1, 1, 0, 1, 0, 1),
    ('Fiji', 'Nadi', 0, 1, 1, 0, 1, 1, 0, 1, 0, 1),
    ('Fiji', 'Nausori', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Faroe Islands', 'Tórshavn', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Faroe Islands', 'Klaksvík', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Faroe Islands', 'Hvalba', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Guinea', 'Conakry', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Guinea', 'Mamou', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Guinea', 'Guéckédou', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Guatemala', 'Guatemala City', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Guatemala', 'Mixco', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Guatemala', 'Villa Nueva', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Hong Kong', 'Hong Kong', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Hong Kong', 'Kowloon', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Hong Kong', 'Sha Tin', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Haiti', 'Port-au-Prince', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('Haiti', 'Carrefour', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('France', 'Bordeaux', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
    ('France', 'Marseille', 0, 1, 1, 0, 1, 1, 0, 1, 0, 1);
	INSERT INTO cities_activities (country, city, skiing, sightseeing, beach, lakes, kayaking, sailing, ocean, sea, hiking, nature)
VALUES
('Micronesia', 'Weno', 0, 1, 0, 0, 1, 1, 1, 1, 1, 1),
('Micronesia', 'Palikir', 0, 1, 0, 0, 1, 1, 1, 1, 1, 1),
('Greece', 'Athens', 0, 1, 0, 0, 0, 0, 1, 1, 1, 1),
('Greece', 'Thessaloníki', 0, 1, 0, 0, 0, 0, 1, 1, 1, 1),
('Haiti', 'Pétion-Ville', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1),
('Jamaica', 'Kingston', 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
('Laos', 'Vientiane', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Mauritius', 'Port Louis', 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
('Mexico', 'Monterrey', 0, 1, 0, 1, 1, 1, 1, 0, 1, 1),
('Spain', 'Valencia', 0, 1, 1, 0, 1, 1, 1, 1, 1, 1),
('Ethiopia', 'Addis Ababa', 0, 1, 0, 1, 1, 1, 0, 0, 1, 1),
('Israel', 'Jerusalem', 0, 1, 0, 0, 0, 0, 1, 1, 1, 1),
('Guam', 'Hagatna', 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
('Liberia', 'Monrovia', 0, 1, 0, 1, 1, 1, 0, 0, 1, 1);

INSERT INTO cities_activities (country, city, skiing, sightseeing, beach, lakes, kayaking, sailing, ocean, sea, hiking, nature)
VALUES
('Liberia', 'New Kru Town', 0, 1, 0, 1, 1, 1, 0, 1, 1, 1),
('Liberia', 'Upper Buchanan', 0, 1, 0, 1, 1, 1, 0, 1, 1, 1),
('Mauritius', 'Port Louis', 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
('Mauritius', 'Curepipe', 0, 1, 0, 1, 1, 0, 0, 1, 1, 1),
('Mauritius', 'Quatre Bornes', 0, 1, 0, 1, 0, 0, 0, 1, 1, 1),
('Mexico', 'Monterrey', 0, 1, 0, 1, 1, 1, 1, 0, 1, 1),
('Mali', 'Bamako', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Mali', 'Balandougou', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1),
('Spain', 'Valencia', 0, 1, 1, 0, 1, 1, 1, 1, 1, 1),
('Ethiopia', 'Addis Ababa', 0, 1, 0, 1, 1, 1, 0, 0, 1, 1),
('Ethiopia', 'Erer Sata', 0, 0, 0, 1, 0, 0, 0, 0, 1, 1),
('Guam', 'Maina', 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
('Guam', 'Hagatna', 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
('Israel', 'Tel Aviv-Yafo', 0, 1, 1, 0, 1, 1, 1, 1, 1, 1),
('Israel', 'Jerusalem', 0, 1, 0, 0, 0, 0, 1, 1, 1, 1),
('Mayotte', 'Mamoudzou', 0, 1, 1, 0, 1, 0, 1, 1, 1, 1),
('Mayotte', 'Koungou', 0, 1, 0, 1, 1, 1, 0, 1, 1, 1),
('Mayotte', 'Dembeni', 0, 1, 0, 1, 1, 0, 0, 1, 1, 1),
('Namibia', 'Windhoek', 0, 1, 0, 1, 1, 1, 0, 0, 1, 1),
('United Kingdom', 'Birmingham', 0, 1, 0, 0, 0, 0, 1, 0, 1, 1),
('United Kingdom', 'Portsmouth', 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
('Georgia', 'Tbilisi', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Japan', 'Nagoya', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Cambodia', 'Phnom Penh', 0, 1, 0, 1, 1, 0, 1, 0, 1, 1),
('Cambodia', 'Siem Reap', 0, 1, 0, 0, 1, 0, 0, 1, 1, 1),
('Ethiopia', 'Shashemene', 0, 1, 0, 1, 1, 0, 1, 0, 1, 1),
('Guinea-Bissau', 'Bissau', 0, 1, 0, 0, 0, 0, 1, 0, 1, 1),
('Guinea-Bissau', 'Farim', 0, 1, 0, 0, 0, 0, 1, 0, 1, 1),
('Guinea-Bissau', 'Quinhámel', 0, 0, 0, 1, 0, 0, 1, 0, 1, 1),
('Mali', 'Zégoua', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Montenegro', 'Podgorica', 0, 1, 0, 0, 0, 0, 1, 1, 1, 1),
('Montenegro', 'Nikšić', 0, 1, 0, 0, 0, 0, 1, 0, 1, 1),
('Namibia', 'Walvisbaai', 0, 1, 1, 1, 1, 1, 1, 0, 1, 1),
('Namibia', 'Rundu', 0, 1, 0, 1, 1, 0, 1, 0, 1, 1),
('Nicaragua', 'Managua', 0, 1, 0, 1, 1, 1, 0, 1, 1, 1),
('Georgia', 'Batumi', 0, 1, 1, 0, 1, 1, 1, 1, 1, 1),
('Georgia', 'Kutaisi', 0, 1, 0, 1, 1, 0, 1, 0, 1, 1),
('Equatorial Guinea', 'Malabo', 0, 1, 0, 1, 1, 1, 0, 0, 1, 1),
('Cambodia', 'Battambang', 0, 1, 0, 1, 0, 0, 1, 0, 1, 1),
('Saint Kitts and Nevis', 'Basseterre', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Monaco', 'Monaco', 0, 1, 1, 0, 1, 1, 1, 1, 1, 1),
('Montenegro', 'Ulcinj', 0, 1, 1, 1, 1, 1, 0, 0, 1, 1);

INSERT INTO cities_activities (country, city, skiing, sightseeing, beach, lakes, kayaking, sailing, ocean, sea, hiking, nature)
VALUES
('Mauritania', 'Nouakchott', 0, 1, 0, 1, 0, 0, 0, 1, 1, 1),
('Mauritania', 'Arafat', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1),
('Equatorial Guinea', 'Bata', 0, 1, 0, 1, 0, 0, 1, 0, 1, 1),
('Equatorial Guinea', 'Sevilla de Niefang', 0, 0, 0, 0, 0, 0, 1, 0, 1, 1),
('Libya', 'Tripoli', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Greenland', 'Nuuk', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Greenland', 'Sisimiut', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Greenland', 'Ilulissat', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Honduras', 'Tegucigalpa', 0, 1, 0, 1, 0, 0, 1, 0, 1, 1),
('Nigeria', 'Lagos', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Nigeria', 'Abuja', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Nigeria', 'Ibadan', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Mauritania', 'Dar Naim', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1),
('New Caledonia', 'Nouméa', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('New Caledonia', 'Dumbéa', 0, 1, 0, 1, 1, 1, 0, 1, 1, 1),
('New Caledonia', 'Mont-Dore', 0, 1, 0, 1, 1, 0, 0, 1, 1, 1),
('Panama', 'Panama City', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Israel', 'Haifa', 0, 1, 1, 0, 1, 1, 1, 1, 1, 1),
('Korea, South', 'Seoul', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Korea, South', 'Busan', 0, 1, 1, 1, 1, 1, 1, 1, 1, 1),
('Korea, South', 'Incheon', 0, 1, 1, 0, 1, 1, 0, 0, 1, 1),
('Kuwait', 'Kuwait City', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Kuwait', 'Al Jahra’', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1),
('Kuwait', 'Abu ?ulayfah', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1),
('Morocco', 'Casablanca', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Panama', 'San Miguelito', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Panama', 'David', 0, 1, 0, 1, 0, 0, 1, 0, 1, 1),
('Sudan', 'Khartoum', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Honduras', 'Comayagüela', 0, 1, 0, 0, 0, 0, 1, 0, 1, 1),
('Honduras', 'San Pedro Sula', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Croatia', 'Zagreb', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Nicaragua', 'León', 0, 1, 0, 1, 1, 1, 0, 0, 1, 1),
('Nicaragua', 'Tipitapa', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Nepal', 'Kathmandu', 0, 1, 0, 1, 1, 0, 0, 0, 1, 1),
('Libya', 'Benghazi', 0, 1, 0, 0, 0, 0, 1, 0, 1, 1),
('Libya', 'Ajdabiya', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Marshall Islands', 'Majuro', 0, 1, 1, 0, 1, 1, 0, 0, 1, 1),
('Mongolia', 'Ulaanbaatar', 0, 1, 0, 0, 0, 0, 1, 0, 1, 1),
('Mongolia', 'Mörön', 0, 1, 0, 1, 0, 0, 1, 0, 1, 1),
('Mongolia', 'Erdenet', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Sudan', 'Omdurman', 0, 1, 0, 0, 0, 0, 1, 0, 1, 1),
('Sudan', 'Al Mijlad', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1),
('El Salvador', 'San Salvador', 0, 1, 0, 1, 1, 0, 1, 1, 1, 1),
('Montserrat', 'Brades', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Montserrat', 'Plymouth', 0, 1, 0, 1, 1, 0, 1, 1, 1, 1),
('Norway', 'Oslo', 0, 1, 0, 1, 1, 0, 1, 0, 1, 1),
('Norway', 'Bergen', 0, 1, 0, 1, 1, 0, 1, 0, 1, 1),
('New Zealand', 'Auckland', 0, 1, 1, 0, 1, 1, 1, 1, 1, 1),
('New Zealand', 'Christchurch', 0, 1, 0, 1, 1, 0, 1, 0, 1, 1),
('New Zealand', 'Manukau City', 0, 1, 0, 1, 0, 0, 1, 0, 1, 1);
INSERT INTO cities_activities (country, city, skiing, sightseeing, beach, lakes, kayaking, sailing, ocean, sea, hiking, nature)
VALUES
('Croatia', 'Split', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Croatia', 'Rijeka', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Iraq', 'Baghdad', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Nepal', 'Bharatpur', 0, 1, 0, 1, 0, 0, 1, 0, 1, 1),
('Nepal', 'Pokhara', 0, 1, 0, 1, 1, 0, 0, 0, 1, 1),
('Pakistan', 'Karachi', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Peru', 'Lima', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Peru', 'Arequipa', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Peru', 'Trujillo', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Norway', 'Stavanger', 0, 1, 0, 1, 1, 0, 0, 1, 1, 1),
('Saint Helena, Ascension, and Tristan da Cunha', 'Jamestown', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Saint Helena, Ascension, and Tristan da Cunha', 'Edinburgh of the Seven Seas', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Iraq', 'Mosul', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Iraq', 'Al Başrah', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Kazakhstan', 'Almaty', 1, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('El Salvador', 'Santa Ana', 0, 1, 0, 1, 0, 0, 1, 0, 1, 1),
('El Salvador', 'Soyapango', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Trinidad and Tobago', 'Chaguanas', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Saint Lucia', 'Castries', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Saint Lucia', 'Gros Islet', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Saint Lucia', 'Micoud', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Saint Helena, Ascension, and Tristan da Cunha', 'Georgetown', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('San Marino', 'Serravalle', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('San Marino', 'Borgo Maggiore', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Liechtenstein', 'Schaan', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Liechtenstein', 'Vaduz', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Liechtenstein', 'Triesen', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('San Marino', 'San Marino', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Slovakia', 'Bratislava', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Slovakia', 'Košice', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Maldives', 'Male', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Maldives', 'Kulhudhuffushi', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Maldives', 'Hithadhoo', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Trinidad and Tobago', 'San Fernando', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Trinidad and Tobago', 'Port of Spain', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Tunisia', 'Tunis', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('North Macedonia', 'Skopje', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('North Macedonia', 'Kumanovo', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('North Macedonia', 'Bitola', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Papua New Guinea', 'Port Moresby', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Papua New Guinea', 'Lae', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Papua New Guinea', 'Popondetta', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Russia', 'Moscow', 1, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Russia', 'Saint Petersburg', 1, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Russia', 'Novosibirsk', 1, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Slovakia', 'Petržalka', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Sweden', 'Stockholm', 0, 1, 0, 1, 1, 0, 1, 0, 1, 1),
('Sweden', 'Gothenburg', 0, 1, 0, 1, 1, 0, 1, 0, 1, 1),
('Pakistan', 'Lahore', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Pakistan', 'Kotla Qasim Khan', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Palau', 'Koror', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Kazakhstan', 'Shymkent', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Kazakhstan', 'Astana', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Kyrgyzstan', 'Bishkek', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1);

INSERT INTO cities_activities (country, city, skiing, sightseeing, beach, lakes, kayaking, sailing, ocean, sea, hiking, nature)
VALUES
('Tunisia', 'Sidi Bouzid', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Tunisia', 'Sfax', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Taiwan', 'Taichung', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Taiwan', 'Kaohsiung', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Morocco', 'Fes', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Morocco', 'Marrakech', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Madagascar', 'Antananarivo', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Malta', 'Valletta', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Malta', 'Qormi', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Malta', 'Birkirkara', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Palau', 'Melekeok', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Palau', 'Ngerulmud', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Sierra Leone', 'Freetown', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Sierra Leone', 'Bo', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Sierra Leone', 'Kenema', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Suriname', 'Paramaribo', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Burma', 'Rangoon', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Burma', 'Mandalay', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Burma', 'Nay Pyi Taw', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Suriname', 'Cottica', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Suriname', 'Koewarasan', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Slovenia', 'Ljubljana', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Kyrgyzstan', 'Osh', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Kyrgyzstan', 'Jalal-Abad', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Lebanon', 'Beirut', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Sweden', 'Malmö', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Uganda', 'Kampala', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Uganda', 'Mbale', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Taiwan', 'Taipei', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Ukraine', 'Kyiv', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Ukraine', 'Kharkiv', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Ukraine', 'Odesa', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Lebanon', 'Barr Eliâs', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Lebanon', 'Tripoli', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Lithuania', 'Vilnius', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Northern Mariana Islands', 'Capitol Hill', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Norfolk Island', 'Kingston', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Philippines', 'Manila', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Philippines', 'Quezon City', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Lithuania', 'Kaunas', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Lithuania', 'Klaipeda', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Luxembourg', 'Luxembourg', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Luxembourg', 'Esch-sur-Alzette', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Luxembourg', 'Dudelange', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Latvia', 'Riga', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('South Sudan', 'Juba', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('South Sudan', 'Bor', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('South Sudan', 'Kajo Kaji', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Latvia', 'Daugavpils', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Latvia', 'Liepaja', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Saint Martin', 'Marigot', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Moldova', 'Chisinau', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Slovenia', 'Maribor', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Slovenia', 'Celje', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Turks and Caicos Islands', 'Grand Turk', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Togo', 'Sokodé', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1);

INSERT INTO cities_activities (country, city, skiing, sightseeing, beach, lakes, kayaking, sailing, ocean, sea, hiking, nature)
VALUES
('Togo', 'Kpalimé', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Togo', 'Atakpamé', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Sint Maarten', 'Philipsburg', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Seychelles', 'Victoria', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Chad', 'N’Djamena', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Uganda', 'Nansana', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Uzbekistan', 'Tashkent', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Uzbekistan', 'Namangan', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Moldova', 'Tiraspol', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Moldova', 'Bălţi', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Mozambique', 'Maputo', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Chad', 'Moundou', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Chad', 'Sarh', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Timor-Leste', 'Dili', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Timor-Leste', 'Maliana', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Uzbekistan', 'Andijon', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Vanuatu', 'Port-Vila', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Vanuatu', 'Luganville', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Brazil', 'Belo Horizonte', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Barbados', 'Bridgetown', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Canada', 'Toronto', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Timor-Leste', 'Baucau', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Tuvalu', 'Funafuti', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('United States', 'New York', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('United States', 'Los Angeles', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Uruguay', 'Montevideo', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Uruguay', 'Maldonado', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Uruguay', 'Salto', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Vanuatu', 'Isangel', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Wallis and Futuna', 'Mata-Utu', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Wallis and Futuna', 'Leava', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Mozambique', 'Matola', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Mozambique', 'Nampula', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Malaysia', 'Kuala Lumpur', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Vatican City', 'Vatican City', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Yemen', 'Sanaa', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Yemen', 'Ta‘izz', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Yemen', 'Al ?udaydah', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Malaysia', 'Seberang Jaya', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Malaysia', 'Klang', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Niger', 'Niamey', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Niger', 'Maradi', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Niger', 'Zinder', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Niue', 'Alofi', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Netherlands', 'Tilburg', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Netherlands', 'Amsterdam', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Netherlands', 'Rotterdam', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Madagascar', 'Androtsy', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Madagascar', 'Betsiboka', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Martinique', 'Fort-de-France', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Oman', 'Masqaţ', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Oman', 'Muscat', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Oman', 'Bawshar', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Pitcairn Islands', 'Adamstown', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Puerto Rico', 'San Juan', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Puerto Rico', 'Aguadilla', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Puerto Rico', 'Bayamón', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Paraguay', 'Asunción', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Paraguay', 'Ciudad del Este', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Paraguay', 'San Lorenzo', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Saudi Arabia', 'Riyadh', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Poland', 'Warsaw', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Poland', 'Kraków', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Poland', 'Wrocław', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Korea, North', 'Pyongyang', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Korea, North', 'Hamhung', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Korea, North', 'Nampo', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Portugal', 'Porto', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Canada', 'Montréal', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Canada', 'Vancouver', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Cook Islands', 'Avarua', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Saudi Arabia', 'Jeddah', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Saudi Arabia', 'Mecca', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Singapore', 'Singapore', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Colombia', 'Bogotá', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Colombia', 'Medellín', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Colombia', 'Cali', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Saint Pierre and Miquelon', 'Saint-Pierre', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Serbia', 'Belgrade', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Serbia', 'Novi Sad', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Serbia', 'Niš', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Portugal', 'Lisbon', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Portugal', 'Aves', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1);


INSERT INTO cities_activities (country, city, skiing, sightseeing, beach, lakes, kayaking, sailing, ocean, sea, hiking, nature)
VALUES
('French Polynesia', 'Papeete', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Reunion', 'Saint-Denis', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Turkey', 'Istanbul', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Turkey', 'Ankara', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Turkey', 'Izmir', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Virgin Islands, British', 'Road Town', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('South Africa', 'Johannesburg', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('South Africa', 'Cape Town', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('South Africa', 'Soweto', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Reunion', 'Saint-Benoît', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Eswatini', 'Manzini', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Eswatini', 'Mbabane', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Eswatini', 'Siteki', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('U.S. Virgin Islands', 'Charlotte Amalie', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Philippines', 'Zamboanga City', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('South Georgia and South Sandwich Islands', 'Grytviken', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('South Georgia And South Sandwich Islands', 'King Edward Point', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Somalia', 'Mogadishu', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Somalia', 'Kismaayo', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Somalia', 'Baidoa', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Sao Tome and Principe', 'Sao Tomé', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Sao Tome and Principe', 'Santana', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Sao Tome and Principe', 'Neves', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Zambia', 'Lusaka', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Zambia', 'Ndola', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Zambia', 'Kitwe', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Turkmenistan', 'Ashgabat', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Turkmenistan', 'Türkmenabat', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Turkmenistan', 'Daşoguz', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Tonga', 'Nuku‘alofa', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Tonga', 'Neiafu', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Vietnam', 'Ho Chi Minh City', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Vietnam', 'Hanoi', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Vietnam', 'Haiphong', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Samoa', 'Apia', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Samoa', 'Afega', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Samoa', 'Safotu', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Zimbabwe', 'Harare', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Zimbabwe', 'Masvingo', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Zimbabwe', 'Bulawayo', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Comoros', 'Mutsamudu', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Comoros', 'Ouani', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Comoros', 'Mandza', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Curaçao', 'Willemstad', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Dominica', 'Roseau', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Dominican Republic', 'Santiago', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Dominican Republic', 'Santo Domingo', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Dominican Republic', 'Santo Domingo Este', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Falkland Islands (Islas Malvinas)', 'Stanley', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Gabon', 'Libreville', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Gabon', 'Port-Gentil', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Gabon', 'Franceville', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1);
INSERT INTO cities_activities (country, city, skiing, sightseeing, beach, lakes, kayaking, sailing, ocean, sea, hiking, nature)
VALUES
('Guadeloupe', 'Pointe-a-Pitre', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Guadeloupe', 'Basse-Terre', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Isle of Man', 'Douglas', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Isle of Man', 'Onchan', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('India', 'Delhi', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('India', 'Mumbai', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('United States', 'Chicago', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('India', 'Kolkata', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Ireland', 'Dublin', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Ireland', 'Finglas', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Ireland', 'Cork', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Iran', 'Tehran', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Iran', 'Mashhad', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Iran', 'Khowrhesht', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Jordan', 'Amman', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Jordan', 'Al Mafraq', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Jordan', 'Irbid', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Sri Lanka', 'Colombo', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Sri Lanka', 'Mount Lavinia', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Sri Lanka', 'Kesbewa', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Lesotho', 'Maseru', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Lesotho', 'Teyateyaneng', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Lesotho', 'Mafeteng', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Malawi', 'Blantyre', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Malawi', 'Lilongwe', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Malawi', 'Mzuzu', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Nauru', 'Yaren', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Qatar', 'Doha', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Qatar', 'Ar Rayyan', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Qatar', 'Laqţah', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Romania', 'Bucharest', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Romania', 'Cluj-Napoca', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Romania', 'Iaşi', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Rwanda', 'Kigali', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Rwanda', 'Muhanga', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Rwanda', 'Gitarama', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Senegal', 'Dakar', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Senegal', 'Pikine', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Senegal', 'Touba', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Solomon Islands', 'Honiara', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Solomon Islands', 'Auki', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Solomon Islands', 'Gizo', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Syria', 'Damascus', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Syria', 'Aleppo', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Syria', 'Homs', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1);

INSERT INTO cities_activities (country, city, skiing, sightseeing, beach, lakes, kayaking, sailing, ocean, sea, hiking, nature)
VALUES
('Thailand', 'Bangkok', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Thailand', 'Chiang Mai', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Thailand', 'Nakhon Ratchasima', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Tajikistan', 'Dushanbe', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Tajikistan', 'Khujand', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Tajikistan', 'Konibodom', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Tanzania', 'Dar es Salaam', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Tanzania', 'Mwanza', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Tanzania', 'Ubungo', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Saint Vincent and the Grenadines', 'Calliaqua', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Saint Vincent and the Grenadines', 'Kingstown', 0, 1, 1, 0, 1, 1, 0, 1, 1, 1),
('Venezuela', 'Caracas', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Venezuela', 'Maracaibo', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Venezuela', 'Valencia', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1);
--update skiing (add skiing if city less than 1h travel from the resort)
INSERT INTO cities_activities (country, city, skiing, sightseeing, beach, lakes, kayaking, sailing, ocean, sea, hiking, nature)
VALUES
('Thailand', 'Bangkok', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),  -- Skiing in nearby mountains, though not ideal for skiing
('Thailand', 'Chiang Mai', 1, 1, 0, 1, 0, 0, 0, 0, 1, 1),  -- Proximity to Doi Inthanon for hiking, some ski resorts
('Turkey', 'Istanbul', 1, 1, 0, 1, 0, 0, 0, 0, 1, 1),  -- Close to Uludağ ski resort
('Turkey', 'Ankara', 1, 1, 0, 1, 0, 0, 0, 0, 1, 1),  -- Close to Elmadağ ski resort
('Turkey', 'Izmir', 1, 1, 0, 1, 0, 0, 0, 0, 1, 1),  -- Skiing available in the nearby Uludağ area
('Portugal', 'Lisbon', 1, 1, 0, 1, 0, 0, 0, 0, 1, 1),  -- Proximity to Serra da Estrela
('Portugal', 'Porto', 1, 1, 0, 1, 0, 0, 0, 0, 1, 1),  -- Serra da Estrela mountain
('Romania', 'Bucharest', 1, 1, 0, 1, 0, 0, 0, 0, 1, 1),  -- Close to Poiana Brașov ski resort
('Romania', 'Cluj-Napoca', 1, 1, 0, 1, 0, 0, 0, 0, 1, 1),  -- Close to Bucin ski resort
('Albania', 'Tirana', 1, 1, 0, 1, 0, 0, 0, 0, 1, 1),  -- Close to Dajti ski resort
('Italy', 'Turin', 1, 1, 0, 1, 0, 0, 0, 0, 1, 1),  -- Close to the Alps ski resorts
('France', 'Chambéry', 1, 1, 0, 1, 0, 0, 0, 0, 1, 1),  -- Close to La Féclaz for skiing
('United States', 'Denver', 1, 1, 0, 1, 0, 0, 0, 0, 1, 1),  -- Close to many ski resorts like Aspen, Breckenridge
('United States', 'Salt Lake City', 1, 1, 0, 1, 0, 0, 0, 0, 1, 1),  -- Proximity to Park City ski resort
('United States', 'Chicago', 1, 1, 0, 1, 0, 0, 0, 0, 1, 1),  -- Skiing in nearby resorts like Alpine Valley
('Canada', 'Toronto', 1, 1, 0, 1, 0, 0, 0, 0, 1, 1),  -- Close to Blue Mountain and other ski resorts
('Canada', 'Vancouver', 1, 1, 0, 1, 0, 0, 0, 0, 1, 1),  -- Close to Whistler ski resort
('Switzerland', 'Zurich', 1, 1, 0, 1, 0, 0, 0, 0, 1, 1),  -- Close to the Alps ski resorts
('Austria', 'Vienna', 1, 1, 0, 1, 0, 0, 0, 0, 1, 1),  -- Close to the Austrian Alps ski resorts
('Slovenia', 'Ljubljana', 1, 1, 0, 1, 0, 0, 0, 0, 1, 1),  -- Close to Kranjska Gora ski resort
('France', 'Grenoble', 1, 1, 0, 1, 0, 0, 0, 0, 1, 1),  -- Close to Alpe d'Huez and other ski resorts
('Spain', 'Madrid', 1, 1, 0, 1, 0, 0, 0, 0, 1, 1),  -- Close to Navacerrada and Valdesquí ski resorts
('Sweden', 'Stockholm', 1, 1, 0, 1, 0, 0, 0, 0, 1, 1),  -- Close to Sälen and other ski resorts
('Norway', 'Oslo', 1, 1, 0, 1, 0, 0, 0, 0, 1, 1);  -- Close to Tryvann and other ski resorts
--set sighteeing to 0 in some more
-- Remove sightseeing = 1 from cities less famous for tourism

UPDATE cities_activities 
SET sightseeing = 0
WHERE city IN (
    'Bamako', 'Kigali', 'Omdurman', 'Sarh', 'Moundou', 'Mafete', 'Teyateyaneng', 'Atakpamé', 'Farim', 
    'Quinhámel', 'Bălţi', 'Al Mijlad', 'Mingora', 'Aykol', 'Fariman', 'Mohammadabad', 'Nagoya', 
    'Siem Reap', 'Rundu', 'Jalal-Abad', 'Kutaisi', 'Soweto', 'Masvingo', 'Erdenet', 'Morón', 'Bintulu'
);


UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Kabul';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Herat';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Al Mu?arraq';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Madinat ?amad';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Tanki Leendert';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Durrës';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Gyumri';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Vanadzor';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Lucaya';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Freeport City';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Bijeljina';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Thimphu';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'The Valley';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Seria';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Banja Luka';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Mindelo';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Sao Filipe';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Limassol';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Larnaca';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Vitsyebsk';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'San Ignacio';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Gazipura';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Belmopan';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Santa Cruz de la Sierra';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Ostrava';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Saint Peter Port';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Mixco';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Villa Nueva';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Chisinau';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Maribor';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Celje';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Saint Helier';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Serekunda';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Brikama';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Linden';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'New Amsterdam';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Debrecen';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Tchibota';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Gwelej';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Banjul';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Aarhus';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Odense';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Saint David’s';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Saint George’s';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Mambéré';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Saint-Laurent-du-Maroni';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Mogadishu';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Kismaayo';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Baidoa';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Sao Tomé';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Santana';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Neves';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Ndola';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Kitwe';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Türkmenabat';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Daşoguz';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Neiafu';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Lusaka';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Alofi';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Betsiboka';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Masqaţ';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Bawshar';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Adamstown';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Aguadilla';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Bayamón';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'San Lorenzo';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Jeddah';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Mecca';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Cluj-Napoca';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Iaşi';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Niš';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Papeete';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Saint-Denis';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Izmir';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Road Town';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Manzini';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Mbabane';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Charlotte Amalie';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Zamboanga City';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Grytviken';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'King Edward Point';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Santo Domingo Este';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Jeddah';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Singapore';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Medellín';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Cali';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Santo Domingo';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Kuala Lumpur';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Zagreb';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'León';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Kathmandu';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Benghazi';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Ajdabiya';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Majuro';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Ulaanbaatar';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Mörön';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'San Salvador';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Plymouth';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Moscow';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Novosibirsk';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Petržalka';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Gothenburg';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Lahore';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Koror';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Shymkent';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Astana';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Bishkek';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Sidi Bouzid';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Fes';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Marrakech';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Antananarivo';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Valletta';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Qormi';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Birkirkara';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Melekeok';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Ngerulmud';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Freetown';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Bo';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Kenema';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Paramaribo';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Rangoon';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Mandalay';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Nay Pyi Taw';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Cottica';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Koewarasan';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Ljubljana';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Osh';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Beirut';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Malmö';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Kampala';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Mbale';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Taipei';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Kyiv';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Kharkiv';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Odesa';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Barr Eliâs';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Tripoli';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Vilnius';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Capitol Hill';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Kingston';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Manila';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Quezon City';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Kaunas';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Klaipeda';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Kazan';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Ufa';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Sochi';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Yekaterinburg';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Chelyabinsk';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Omsk';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Samara';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Vladimir';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Voronezh';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Krasnoyarsk';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Minsk';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Barnaul';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Tolyatti';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Khabarovsk';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Abakan';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Yaroslavl';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Krasnodar';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Elista';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Blagoveshchensk';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Angarsk';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Volgograd';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Astrakhan';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Kirov';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Tula';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Penza';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Saransk';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Kostroma';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Novorossiysk';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Saratov';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Vologda';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Pskov';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Rostov-on-Don';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Kemerovo';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Orenburg';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Cheboksary';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Dushanbe';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Khujand';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Tulun';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Irkutsk';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Vladivostok';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Yakutsk';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Chita';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Severodvinsk';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Syktyvkar';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Arkhangelsk';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Tver';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Nizhny Novgorod';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Grozny';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Tyumen';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Tula';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Volzhsky';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Kursk';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Birobidzhan';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Yakutsk';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Arzamas';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Habarovsk';
UPDATE cities_activities SET sightseeing = 0 WHERE city = 'Grozny';

UPDATE cities_activities SET nature = 0 WHERE city = 'Kabul';
UPDATE cities_activities SET nature = 0 WHERE city = 'Herat';
UPDATE cities_activities SET nature = 0 WHERE city = 'Al Mu?arraq';
UPDATE cities_activities SET nature = 0 WHERE city = 'Madinat ?amad';
UPDATE cities_activities SET nature = 0 WHERE city = 'Tanki Leendert';
UPDATE cities_activities SET nature = 0 WHERE city = 'Durrës';
UPDATE cities_activities SET nature = 0 WHERE city = 'Gyumri';
UPDATE cities_activities SET nature = 0 WHERE city = 'Vanadzor';
UPDATE cities_activities SET nature = 0 WHERE city = 'Lucaya';
UPDATE cities_activities SET nature = 0 WHERE city = 'Freeport City';
UPDATE cities_activities SET nature = 0 WHERE city = 'Bijeljina';
UPDATE cities_activities SET nature = 0 WHERE city = 'Limassol';
UPDATE cities_activities SET nature = 0 WHERE city = 'Larnaca';
UPDATE cities_activities SET nature = 0 WHERE city = 'Vitsyebsk';
UPDATE cities_activities SET nature = 0 WHERE city = 'San Ignacio';
UPDATE cities_activities SET nature = 0 WHERE city = 'Gazipura';
UPDATE cities_activities SET nature = 0 WHERE city = 'Belmopan';
UPDATE cities_activities SET nature = 0 WHERE city = 'Santa Cruz de la Sierra';
UPDATE cities_activities SET nature = 0 WHERE city = 'Ostrava';
UPDATE cities_activities SET nature = 0 WHERE city = 'Saint Peter Port';
UPDATE cities_activities SET nature = 0 WHERE city = 'Mixco';
UPDATE cities_activities SET nature = 0 WHERE city = 'Villa Nueva';
UPDATE cities_activities SET nature = 0 WHERE city = 'Chisinau';
UPDATE cities_activities SET nature = 0 WHERE city = 'Maribor';
UPDATE cities_activities SET nature = 0 WHERE city = 'Celje';
UPDATE cities_activities SET nature = 0 WHERE city = 'Saint Helier';
UPDATE cities_activities SET nature = 0 WHERE city = 'Serekunda';
UPDATE cities_activities SET nature = 0 WHERE city = 'Brikama';
UPDATE cities_activities SET nature = 0 WHERE city = 'Linden';
UPDATE cities_activities SET nature = 0 WHERE city = 'New Amsterdam';
UPDATE cities_activities SET nature = 0 WHERE city = 'Debrecen';
UPDATE cities_activities SET nature = 0 WHERE city = 'Tchibota';
UPDATE cities_activities SET nature = 0 WHERE city = 'Gwelej';
UPDATE cities_activities SET nature = 0 WHERE city = 'Banjul';
UPDATE cities_activities SET nature = 0 WHERE city = 'Aarhus';
UPDATE cities_activities SET nature = 0 WHERE city = 'Odense';
UPDATE cities_activities SET nature = 0 WHERE city = 'Saint David’s';
UPDATE cities_activities SET nature = 0 WHERE city = 'Saint George’s';
UPDATE cities_activities SET nature = 0 WHERE city = 'Mambéré';
UPDATE cities_activities SET nature = 0 WHERE city = 'Saint-Laurent-du-Maroni';
UPDATE cities_activities SET nature = 0 WHERE city = 'Mogadishu';
UPDATE cities_activities SET nature = 0 WHERE city = 'Kismaayo';
UPDATE cities_activities SET nature = 0 WHERE city = 'Baidoa';
UPDATE cities_activities SET nature = 0 WHERE city = 'Sao Tomé';
UPDATE cities_activities SET nature = 0 WHERE city = 'Santana';
UPDATE cities_activities SET nature = 0 WHERE city = 'Neves';
UPDATE cities_activities SET nature = 0 WHERE city = 'Ndola';
UPDATE cities_activities SET nature = 0 WHERE city = 'Kitwe';
UPDATE cities_activities SET nature = 0 WHERE city = 'Türkmenabat';
UPDATE cities_activities SET nature = 0 WHERE city = 'Daşoguz';
UPDATE cities_activities SET nature = 0 WHERE city = 'Neiafu';
UPDATE cities_activities SET nature = 0 WHERE city = 'Lusaka';
UPDATE cities_activities SET nature = 0 WHERE city = 'Alofi';
UPDATE cities_activities SET nature = 0 WHERE city = 'Betsiboka';
UPDATE cities_activities SET nature = 0 WHERE city = 'Masqaţ';
UPDATE cities_activities SET nature = 0 WHERE city = 'Bawshar';
UPDATE cities_activities SET nature = 0 WHERE city = 'Adamstown';
UPDATE cities_activities SET nature = 0 WHERE city = 'Aguadilla';
UPDATE cities_activities SET nature = 0 WHERE city = 'Bayamón';
UPDATE cities_activities SET nature = 0 WHERE city = 'San Lorenzo';
UPDATE cities_activities SET nature = 0 WHERE city = 'Jeddah';
UPDATE cities_activities SET nature = 0 WHERE city = 'Mecca';
UPDATE cities_activities SET nature = 0 WHERE city = 'Bucharest';
UPDATE cities_activities SET nature = 0 WHERE city = 'Cluj-Napoca';
UPDATE cities_activities SET nature = 0 WHERE city = 'Iaşi';
UPDATE cities_activities SET nature = 0 WHERE city = 'Niš';
UPDATE cities_activities SET nature = 0 WHERE city = 'Papeete';
UPDATE cities_activities SET nature = 0 WHERE city = 'Saint-Denis';
UPDATE cities_activities SET nature = 0 WHERE city = 'Izmir';
UPDATE cities_activities SET nature = 0 WHERE city = 'Road Town';
UPDATE cities_activities SET nature = 0 WHERE city = 'Manzini';
UPDATE cities_activities SET nature = 0 WHERE city = 'Mbabane';
UPDATE cities_activities SET nature = 0 WHERE city = 'Charlotte Amalie';
UPDATE cities_activities SET nature = 0 WHERE city = 'Zamboanga City';
UPDATE cities_activities SET nature = 0 WHERE city = 'Grytviken';
UPDATE cities_activities SET nature = 0 WHERE city = 'King Edward Point';
UPDATE cities_activities SET nature = 0 WHERE city = 'Santiago';
UPDATE cities_activities SET nature = 0 WHERE city = 'Santo Domingo Este';
UPDATE cities_activities SET nature = 0 WHERE city = 'Montréal';
UPDATE cities_activities SET nature = 0 WHERE city = 'Vancouver';
UPDATE cities_activities SET nature = 0 WHERE city = 'Jeddah';
UPDATE cities_activities SET nature = 0 WHERE city = 'Singapore';
UPDATE cities_activities SET nature = 0 WHERE city = 'Medellín';
UPDATE cities_activities SET nature = 0 WHERE city = 'Cali';
UPDATE cities_activities SET nature = 0 WHERE city = 'Santo Domingo';
UPDATE cities_activities SET nature = 0 WHERE city = 'Kuala Lumpur';
UPDATE cities_activities SET nature = 0 WHERE city = 'Zagreb';
UPDATE cities_activities SET nature = 0 WHERE city = 'León';
UPDATE cities_activities SET nature = 0 WHERE city = 'Kathmandu';
UPDATE cities_activities SET nature = 0 WHERE city = 'Benghazi';
UPDATE cities_activities SET nature = 0 WHERE city = 'Ajdabiya';
UPDATE cities_activities SET nature = 0 WHERE city = 'Majuro';
UPDATE cities_activities SET nature = 0 WHERE city = 'Ulaanbaatar';
UPDATE cities_activities SET nature = 0 WHERE city = 'Mörön';
UPDATE cities_activities SET nature = 0 WHERE city = 'San Salvador';
UPDATE cities_activities SET nature = 0 WHERE city = 'Plymouth';
UPDATE cities_activities SET nature = 0 WHERE city = 'Bucharest';
UPDATE cities_activities SET nature = 0 WHERE city = 'Moscow';
UPDATE cities_activities SET nature = 0 WHERE city = 'Saint Petersburg';
UPDATE cities_activities SET nature = 0 WHERE city = 'Novosibirsk';
UPDATE cities_activities SET nature = 0 WHERE city = 'Petržalka';
UPDATE cities_activities SET nature = 0 WHERE city = 'Stockholm';
UPDATE cities_activities SET nature = 0 WHERE city = 'Gothenburg';
UPDATE cities_activities SET nature = 0 WHERE city = 'Lahore';
UPDATE cities_activities SET nature = 0 WHERE city = 'Koror';
UPDATE cities_activities SET nature = 0 WHERE city = 'Shymkent';
UPDATE cities_activities SET nature = 0 WHERE city = 'Astana';
UPDATE cities_activities SET nature = 0 WHERE city = 'Bishkek';
UPDATE cities_activities SET nature = 0 WHERE city = 'Sidi Bouzid';
UPDATE cities_activities SET nature = 0 WHERE city = 'Fes';
UPDATE cities_activities SET nature = 0 WHERE city = 'Marrakech';
UPDATE cities_activities SET nature = 0 WHERE city = 'Antananarivo';
UPDATE cities_activities SET nature = 0 WHERE city = 'Valletta';
UPDATE cities_activities SET nature = 0 WHERE city = 'Qormi';
UPDATE cities_activities SET nature = 0 WHERE city = 'Birkirkara';
UPDATE cities_activities SET nature = 0 WHERE city = 'Melekeok';
UPDATE cities_activities SET nature = 0 WHERE city = 'Ngerulmud';
UPDATE cities_activities SET nature = 0 WHERE city = 'Freetown';
UPDATE cities_activities SET nature = 0 WHERE city = 'Bo';
UPDATE cities_activities SET nature = 0 WHERE city = 'Kenema';
UPDATE cities_activities SET nature = 0 WHERE city = 'Paramaribo';
UPDATE cities_activities SET nature = 0 WHERE city = 'Rangoon';
UPDATE cities_activities SET nature = 0 WHERE city = 'Mandalay';
UPDATE cities_activities SET nature = 0 WHERE city = 'Nay Pyi Taw';
UPDATE cities_activities SET nature = 0 WHERE city = 'Cottica';
UPDATE cities_activities SET nature = 0 WHERE city = 'Koewarasan';
UPDATE cities_activities SET nature = 0 WHERE city = 'Ljubljana';
UPDATE cities_activities SET nature = 0 WHERE city = 'Osh';
UPDATE cities_activities SET nature = 0 WHERE city = 'Beirut';
UPDATE cities_activities SET nature = 0 WHERE city = 'Malmö';
UPDATE cities_activities SET nature = 0 WHERE city = 'Kampala';
UPDATE cities_activities SET nature = 0 WHERE city = 'Mbale';
UPDATE cities_activities SET nature = 0 WHERE city = 'Taipei';
UPDATE cities_activities SET nature = 0 WHERE city = 'Kyiv';
UPDATE cities_activities SET nature = 0 WHERE city = 'Kharkiv';
UPDATE cities_activities SET nature = 0 WHERE city = 'Odesa';
UPDATE cities_activities SET nature = 0 WHERE city = 'Barr Eliâs';
UPDATE cities_activities SET nature = 0 WHERE city = 'Tripoli';
UPDATE cities_activities SET nature = 0 WHERE city = 'Vilnius';
UPDATE cities_activities SET nature = 0 WHERE city = 'Capitol Hill';
UPDATE cities_activities SET nature = 0 WHERE city = 'Kingston';
UPDATE cities_activities SET nature = 0 WHERE city = 'Manila';
UPDATE cities_activities SET nature = 0 WHERE city = 'Quezon City';
UPDATE cities_activities SET nature = 0 WHERE city = 'Kaunas';
UPDATE cities_activities SET nature = 0 WHERE city = 'Klaipeda';
UPDATE cities_activities SET nature = 0 WHERE city = 'Kazan';
UPDATE cities_activities SET nature = 0 WHERE city = 'Ufa';
UPDATE cities_activities SET nature = 0 WHERE city = 'Sochi';
UPDATE cities_activities SET nature = 0 WHERE city = 'Yekaterinburg';
UPDATE cities_activities SET nature = 0 WHERE city = 'Chelyabinsk';
UPDATE cities_activities SET nature = 0 WHERE city = 'Omsk';
UPDATE cities_activities SET nature = 0 WHERE city = 'Samara';
UPDATE cities_activities SET nature = 0 WHERE city = 'Vladimir';
UPDATE cities_activities SET nature = 0 WHERE city = 'Voronezh';
UPDATE cities_activities SET nature = 0 WHERE city = 'Krasnoyarsk';
UPDATE cities_activities SET nature = 0 WHERE city = 'Minsk';
UPDATE cities_activities SET nature = 0 WHERE city = 'Barnaul';
UPDATE cities_activities SET nature = 0 WHERE city = 'Tolyatti';
UPDATE cities_activities SET nature = 0 WHERE city = 'Khabarovsk';
UPDATE cities_activities SET nature = 0 WHERE city = 'Abakan';
UPDATE cities_activities SET nature = 0 WHERE city = 'Yaroslavl';
UPDATE cities_activities SET nature = 0 WHERE city = 'Krasnodar';
UPDATE cities_activities SET nature = 0 WHERE city = 'Elista';
UPDATE cities_activities SET nature = 0 WHERE city = 'Blagoveshchensk';
UPDATE cities_activities SET nature = 0 WHERE city = 'Angarsk';
UPDATE cities_activities SET nature = 0 WHERE city = 'Volgograd';
UPDATE cities_activities SET nature = 0 WHERE city = 'Astrakhan';
UPDATE cities_activities SET nature = 0 WHERE city = 'Kirov';
UPDATE cities_activities SET nature = 0 WHERE city = 'Tula';
UPDATE cities_activities SET nature = 0 WHERE city = 'Penza';
UPDATE cities_activities SET nature = 0 WHERE city = 'Saransk';
UPDATE cities_activities SET nature = 0 WHERE city = 'Kostroma';
UPDATE cities_activities SET nature = 0 WHERE city = 'Novorossiysk';
UPDATE cities_activities SET nature = 0 WHERE city = 'Saratov';
UPDATE cities_activities SET nature = 0 WHERE city = 'Vologda';
UPDATE cities_activities SET nature = 0 WHERE city = 'Pskov';
UPDATE cities_activities SET nature = 0 WHERE city = 'Rostov-on-Don';
UPDATE cities_activities SET nature = 0 WHERE city = 'Kemerovo';
UPDATE cities_activities SET nature = 0 WHERE city = 'Orenburg';
UPDATE cities_activities SET nature = 0 WHERE city = 'Cheboksary';
UPDATE cities_activities SET nature = 0 WHERE city = 'Dushanbe';
UPDATE cities_activities SET nature = 0 WHERE city = 'Khujand';
UPDATE cities_activities SET nature = 0 WHERE city = 'Tulun';
UPDATE cities_activities SET nature = 0 WHERE city = 'Irkutsk';
UPDATE cities_activities SET nature = 0 WHERE city = 'Vladivostok';
UPDATE cities_activities SET nature = 0 WHERE city = 'Yakutsk';
UPDATE cities_activities SET nature = 0 WHERE city = 'Chita';


UPDATE cities_activities
SET nature = 0
WHERE city IN (
    'Kabul', 'Herat', 'Al Mu?arraq', 'Madinat ?amad', 'Tanki Leendert', 'Durrës', 
    'Gyumri', 'Vanadzor', 'Lucaya', 'Freeport City', 'Bijeljina', 'Limassol', 
    'Larnaca', 'Vitsyebsk', 'San Ignacio', 'Gazipura', 'Belmopan', 'Santa Cruz de la Sierra', 
    'Ostrava', 'Saint Peter Port', 'Mixco', 'Villa Nueva', 'Chisinau', 'Maribor', 'Celje', 
    'Saint Helier', 'Serekunda', 'Brikama', 'Linden', 'New Amsterdam', 'Debrecen', 'Tchibota', 
    'Gwelej', 'Banjul', 'Aarhus', 'Odense', 'Saint David’s', 'Saint George’s', 'Mambéré', 
    'Saint-Laurent-du-Maroni', 'Mogadishu', 'Kismaayo', 'Baidoa', 'Sao Tomé', 'Santana', 
    'Neves', 'Ndola', 'Kitwe', 'Türkmenabat', 'Daşoguz', 'Neiafu', 'Lusaka', 'Alofi', 'Betsiboka', 
    'Masqaţ', 'Bawshar', 'Adamstown', 'Aguadilla', 'Bayamón', 'San Lorenzo', 'Jeddah', 'Mecca', 
    'Bucharest', 'Cluj-Napoca', 'Iaşi', 'Niš', 'Papeete', 'Saint-Denis', 'Izmir', 'Road Town', 
    'Manzini', 'Mbabane', 'Charlotte Amalie', 'Zamboanga City', 'Grytviken', 'King Edward Point', 
    'Santiago', 'Santo Domingo Este', 'Montréal', 'Medellín', 'Cali', 'Santo Domingo', 'Kuala Lumpur', 
    'Zagreb', 'León', 'Benghazi', 'Ajdabiya', 'Majuro', 'Ulaanbaatar', 'Mörön', 'San Salvador', 
    'Plymouth', 'Moscow', 'Saint Petersburg', 'Novosibirsk', 'Petržalka', 'Stockholm', 'Gothenburg', 
    'Lahore', 'Koror', 'Shymkent', 'Astana', 'Bishkek', 'Sidi Bouzid', 'Fes', 'Marrakech', 
    'Antananarivo', 'Valletta', 'Qormi', 'Birkirkara', 'Melekeok', 'Ngerulmud', 'Freetown', 'Bo', 
    'Kenema', 'Paramaribo', 'Rangoon', 'Mandalay', 'Nay Pyi Taw', 'Cottica', 'Koewarasan', 'Ljubljana', 
    'Osh', 'Beirut', 'Malmö', 'Kampala', 'Mbale', 'Taipei', 'Kyiv', 'Kharkiv', 'Odesa', 'Barr Eliâs', 
    'Tripoli', 'Vilnius', 'Capitol Hill', 'Kingston', 'Manila', 'Quezon City', 'Kaunas', 'Klaipeda', 
    'Kazan', 'Ufa', 'Sochi', 'Yekaterinburg', 'Chelyabinsk', 'Omsk', 'Samara', 'Vladimir', 'Voronezh', 
    'Krasnoyarsk', 'Minsk', 'Barnaul', 'Tolyatti', 'Khabarovsk', 'Abakan', 'Yaroslavl', 'Krasnodar', 
    'Elista', 'Blagoveshchensk', 'Angarsk', 'Volgograd', 'Astrakhan', 'Kirov', 'Tula', 'Penza', 'Saransk', 
    'Kostroma', 'Novorossiysk', 'Saratov', 'Vologda', 'Pskov', 'Rostov-on-Don', 'Kemerovo', 'Orenburg', 
    'Cheboksary', 'Dushanbe', 'Khujand', 'Tulun', 'Irkutsk', 'Vladivostok', 'Yakutsk'
);
UPDATE cities_activities
SET nature = 0
WHERE city IN (
    'Kabul', 'Herat', 'Al Mu?arraq', 'Madinat ?amad', 'Tanki Leendert', 'Durrës', 
    'Lucaya', 'Bijeljina', 'Limassol', 'Vitsyebsk', 'San Ignacio', 'Gazipura', 
    'Belmopan', 'Santa Cruz de la Sierra', 'Ostrava', 'Mixco', 'Villa Nueva', 
    'Chisinau', 'Maribor', 'Celje', 'Serekunda', 'Brikama', 'Linden', 'New Amsterdam', 
    'Debrecen', 'Tchibota', 'Gwelej', 'Banjul', 'Aarhus', 'Odense', 'Saint David’s', 
    'Mambéré', 'Mogadishu', 'Kismaayo', 'Baidoa', 'Sao Tomé', 'Santana', 'Neves', 
    'Ndola', 'Kitwe', 'Masqaţ', 'Bawshar', 'Adamstown', 'Aguadilla', 'Bayamón', 
    'San Lorenzo', 'Jeddah', 'Mecca', 'Bucharest', 'Cluj-Napoca', 'Iaşi', 'Niš', 
    'Papeete', 'Saint-Denis', 'Road Town', 'Manzini', 'Mbabane', 'Charlotte Amalie', 
    'Zamboanga City', 'Grytviken', 'King Edward Point', 'Santiago', 'Santo Domingo Este', 
    'Medellín', 'Cali', 'Montréal', 'Zagreb', 'León', 'Benghazi', 'Ajdabiya', 'Majuro', 
    'Mörön', 'San Salvador', 'Plymouth', 'Moscow', 'Saint Petersburg', 'Novosibirsk', 
    'Petržalka', 'Gothenburg', 'Lahore', 'Shymkent', 'Astana', 'Bishkek', 'Sidi Bouzid', 
    'Fes', 'Antananarivo', 'Valletta', 'Qormi', 'Birkirkara', 'Melekeok', 'Ngerulmud', 
    'Freetown', 'Bo', 'Kenema', 'Paramaribo', 'Rangoon', 'Mandalay', 'Nay Pyi Taw', 
    'Koewarasan', 'Ljubljana', 'Osh', 'Beirut', 'Malmö', 'Kampala', 'Taipei', 'Kyiv', 
    'Kharkiv', 'Odesa', 'Barr Eliâs', 'Capitol Hill', 'Kingston', 'Manila', 'Quezon City', 
    'Kaunas', 'Klaipeda', 'Kazan', 'Ufa', 'Sochi', 'Yekaterinburg', 'Chelyabinsk', 
    'Omsk', 'Samara', 'Vladimir', 'Voronezh', 'Krasnoyarsk', 'Minsk', 'Barnaul', 'Tolyatti', 
    'Khabarovsk', 'Abakan', 'Yaroslavl', 'Krasnodar', 'Elista', 'Blagoveshchensk', 'Angarsk', 
    'Volgograd', 'Astrakhan', 'Kirov', 'Tula', 'Penza', 'Saransk', 'Kostroma', 'Novorossiysk', 
    'Saratov', 'Vologda', 'Pskov', 'Rostov-on-Don', 'Kemerovo', 'Orenburg', 'Cheboksary', 
    'Dushanbe', 'Khujand', 'Tulun', 'Irkutsk', 'Vladivostok', 'Yakutsk'
);

UPDATE cities_activities
SET nature = 0
;
UPDATE cities_activities
SET nature = 1
WHERE city IN (
    'Quito', 'Cuenca', 'La Paz', 'Pokhara', 'Karachi', 'Lima', 'Córdoba', 
    'Mombasa', 'Nairobi', 'Brisbane', 'Melbourne', 'Auckland', 'Christchurch', 
    'Vientiane', 'Reykjavík', 'Tórshavn', 'Helsinki', 'Oslo', 'Bergen', 
    'Zürich', 'Geneva', 'Copenhagen', 'Porto', 'Barcelona', 'Madrid', 
    'Bogotá', 'San Juan', 'Guayaquil', 'San José', 'Iguaçu', 'Niagara Falls', 
    'Victoria Falls', 'Lucerne', 'Banff', 'Vancouver', 'Cape Town', 
    'Queenstown', 'Santiago', 'Cascais'
);
UPDATE cities_activities
SET nature = 1
WHERE city IN (
    'Cusco', 'Kathmandu', 'Aspen', 'Lhasa', 'Arusha', 'Valparaíso', 
    'Punta Arenas', 'Portland', 'Teheran', 'Bergen'
);
UPDATE cities_activities
SET nature = 1
WHERE city IN (
    'Queenstown', 'Banff', 'Zermatt', 'Cape Town', 'Hobart', 'Lucerne',
    'Arequipa', 'Mendoza', 'Interlaken', 'Lima'
);


UPDATE cities_activities
SET nature = 1
WHERE city IN (
    'Chamonix', 'Cusco', 'Kyoto', 'Vancouver', 'Tbilisi', 'Reykjavík', 
    'La Paz', 'Helsinki'
);


*/

INSERT INTO cities_activities (country, city, skiing, sightseeing, beach, lakes, kayaking, sailing, ocean, sea, hiking, nature)
VALUES
('Afghanistan', 'Kabul', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1),
('Albania', 'Tirana', 0, 1, 1, 0, 0, 0, 0, 1, 0, 1),
('Algeria', 'Algiers', 0, 1, 1, 0, 0, 1, 0, 1, 0, 1),
('American Samoa', 'Pago Pago', 0, 0, 1, 0, 0, 0, 1, 1, 0, 1),
('Andorra', 'Andorra la Vella', 1, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Angola', 'Luanda', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Anguilla', 'The Valley', 0, 0, 1, 0, 0, 0, 1, 1, 0, 0),
('Antigua and Barbuda', 'Saint John’s', 0, 0, 1, 0, 0, 0, 1, 1, 0, 1),
('Argentina', 'Buenos Aires', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1),
('Armenia', 'Yerevan', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1);
INSERT INTO cities_activities (country, city, skiing, sightseeing, beach, lakes, kayaking, sailing, ocean, sea, hiking, nature)
VALUES
('Aruba', 'Oranjestad', 0, 0, 1, 0, 0, 0, 1, 1, 0, 0),
('Australia', 'Melbourne', 0, 1, 1, 1, 1, 1, 1, 1, 0, 1),
('Austria', 'Vienna', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1),
('Azerbaijan', 'Baku', 0, 1, 1, 0, 0, 0, 0, 1, 0, 1),
('Bahamas, The', 'Nassau', 0, 0, 1, 0, 0, 0, 1, 1, 0, 0),
('Bahrain', 'Manama', 0, 1, 1, 0, 0, 0, 0, 1, 0, 0),
('Bangladesh', 'Dhaka', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
('Barbados', 'Bridgetown', 0, 0, 1, 0, 0, 0, 1, 1, 0, 0),
('Belarus', 'Minsk', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1),
('Belgium', 'Brussels', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1),
('Belize', 'Belize City', 0, 1, 1, 0, 1, 1, 1, 1, 0, 1),
('Benin', 'Cotonou', 0, 1, 1, 0, 0, 0, 1, 1, 0, 0),
('Bermuda', 'Hamilton', 0, 0, 1, 0, 0, 0, 1, 1, 0, 1),
('Bhutan', 'Thimphu', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Bolivia', 'Santa Cruz de la Sierra', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Bonaire, Sint Eustatius, and Saba', 'Kralendijk', 0, 0, 1, 0, 0, 0, 1, 1, 0, 0),
('Bosnia and Herzegovina', 'Sarajevo', 1, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Botswana', 'Gaborone', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1),
('Brazil', 'Sao Paulo', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1),
('Brunei', 'Bandar Seri Begawan', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Bulgaria', 'Sofia', 1, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Burkina Faso', 'Ouagadougou', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1),
('Burma', 'Rangoon', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1),
('Burundi', 'Bujumbura', 0, 1, 0, 1, 0, 0, 0, 0, 0, 1),
('Cabo Verde', 'Mindelo', 0, 0, 1, 0, 0, 0, 1, 1, 0, 1),
('Cambodia', 'Phnom Penh', 0, 1, 1, 0, 0, 0, 0, 1, 0, 1),
('Cameroon', 'Douala', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Canada', 'Toronto', 1, 1, 0, 1, 1, 1, 0, 0, 1, 1),
('Cayman Islands', 'George Town', 0, 0, 1, 0, 0, 0, 1, 1, 0, 0),
('Central African Republic', 'Bangui', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1),
('Chad', 'N’Djamena', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1),
('Chile', 'Santiago', 1, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('China', 'Guangzhou', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1);

INSERT INTO cities_activities (country, city, skiing, sightseeing, beach, lakes, kayaking, sailing, ocean, sea, hiking, nature)
VALUES
('Christmas Island', 'Flying Fish Cove', 0, 1, 1, 0, 1, 1, 1, 1, 1, 1),
('Colombia', 'Bogota', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Comoros', 'Moroni', 0, 0, 1, 0, 0, 0, 1, 1, 0, 1),
('Congo, Democratic Republic of the', 'Kinshasa', 0, 1, 0, 0, 1, 0, 0, 0, 0, 1),
('Congo, Republic of the', 'Brazzaville', 0, 1, 0, 0, 1, 0, 0, 0, 0, 1),
('Cook Islands', 'Avarua', 0, 0, 1, 0, 0, 0, 1, 1, 0, 1),
('Costa Rica', 'San Jose', 0, 1, 1, 1, 1, 0, 0, 1, 1, 1),
('Croatia', 'Zagreb', 0, 1, 1, 0, 0, 1, 0, 1, 1, 1),
('Cuba', 'Havana', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Curacao', 'Willemstad', 0, 0, 1, 0, 0, 0, 1, 1, 0, 1),
('Cyprus', 'Nicosia', 0, 1, 1, 0, 0, 0, 0, 1, 0, 1),
('Czech Republic', 'Prague', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1),
('Denmark', 'Copenhagen', 0, 1, 1, 0, 0, 1, 1, 1, 0, 1),
('Djibouti', 'Djibouti', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Dominica', 'Roseau', 0, 0, 1, 0, 1, 0, 1, 1, 0, 1),
('Dominican Republic', 'Santo Domingo', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Ecuador', 'Quito', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Egypt', 'Cairo', 0, 1, 1, 0, 0, 0, 0, 1, 0, 1),
('El Salvador', 'San Salvador', 0, 1, 1, 0, 0, 0, 0, 1, 0, 1),
('Equatorial Guinea', 'Malabo', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Eritrea', 'Asmara', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Estonia', 'Tallinn', 0, 1, 0, 1, 1, 1, 0, 0, 0, 1),
('Eswatini', 'Mbabane', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Ethiopia', 'Addis Ababa', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Fiji', 'Suva', 0, 0, 1, 0, 0, 0, 1, 1, 0, 1),
('Finland', 'Helsinki', 0, 1, 0, 1, 1, 1, 0, 0, 0, 1),
('France', 'Paris', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1),
('Gabon', 'Libreville', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Gambia, The', 'Banjul', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Georgia', 'Tbilisi', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Germany', 'Berlin', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1),
('Ghana', 'Accra', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Greece', 'Athens', 0, 1, 1, 0, 0, 0, 0, 1, 1, 1),
('Greenland', 'Nuuk', 1, 0, 0, 1, 0, 0, 0, 0, 0, 1),
('Grenada', 'Saint George’s', 0, 0, 1, 0, 0, 0, 1, 1, 0, 1),
('Guatemala', 'Guatemala City', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Guinea', 'Conakry', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Guinea-Bissau', 'Bissau', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Guyana', 'Georgetown', 0, 1, 0, 1, 0, 0, 0, 0, 0, 1),
('Haiti', 'Port-au-Prince', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Honduras', 'Tegucigalpa', 0, 1, 1, 0, 0, 0, 0, 1, 0, 1),
('Hungary', 'Budapest', 0, 1, 0, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO cities_activities (country, city, skiing, sightseeing, beach, lakes, kayaking, sailing, ocean, sea, hiking, nature)
VALUES
('Iceland', 'Reykjavík', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('India', 'Delhi', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1),
('Indonesia', 'Jakarta', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Iran', 'Tehran', 1, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Iraq', 'Baghdad', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1),
('Ireland', 'Dublin', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Isle of Man', 'Douglas', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Israel', 'Tel Aviv-Yafo', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Italy', 'Rome', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1),
('Jamaica', 'Kingston', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Japan', 'Tokyo', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1),
('Jersey', 'Saint Helier', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Jordan', 'Amman', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Kazakhstan', 'Almaty', 1, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Kenya', 'Nairobi', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Kiribati', 'Tarawa', 0, 0, 1, 0, 0, 0, 1, 1, 0, 1),
('Korea, North', 'Pyongyang', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1),
('Korea, South', 'Seoul', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1),
('Kuwait', 'Kuwait City', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Kyrgyzstan', 'Bishkek', 1, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Laos', 'Vientiane', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1),
('Latvia', 'Riga', 0, 1, 0, 0, 0, 0, 1, 1, 0, 1),
('Lebanon', 'Beirut', 0, 1, 1, 0, 0, 0, 1, 1, 1, 1),
('Lesotho', 'Maseru', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Liberia', 'Monrovia', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Libya', 'Tripoli', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Liechtenstein', 'Schaan', 1, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Lithuania', 'Vilnius', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1),
('Luxembourg', 'Luxembourg', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1),
('Macau', 'Macau', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Madagascar', 'Antananarivo', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Malawi', 'Blantyre', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1),
('Malaysia', 'Kuala Lumpur', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1),
('Maldives', 'Male', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Mali', 'Bamako', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1),
('Malta', 'Valletta', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1);
INSERT INTO cities_activities (country, city, skiing, sightseeing, beach, lakes, kayaking, sailing, ocean, sea, hiking, nature)
VALUES
('Marshall Islands', 'Majuro', 0, 0, 1, 0, 0, 0, 1, 1, 0, 1),
('Martinique', 'Fort-de-France', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Mauritania', 'Nouakchott', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Mauritius', 'Port Louis', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Mayotte', 'Mamoudzou', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Mexico', 'Mexico City', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1),
('Micronesia, Federated States of', 'Weno', 0, 0, 1, 0, 0, 0, 1, 1, 0, 1),
('Moldova', 'Chisinau', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1),
('Monaco', 'Monaco', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Mongolia', 'Ulaanbaatar', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Montenegro', 'Podgorica', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Montserrat', 'Brades', 0, 0, 1, 0, 0, 0, 1, 1, 0, 1),
('Morocco', 'Casablanca', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Mozambique', 'Maputo', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Namibia', 'Windhoek', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Nauru', 'Yaren', 0, 0, 1, 0, 0, 0, 1, 1, 0, 1),
('Nepal', 'Kathmandu', 1, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Netherlands', 'Tilburg', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1),
('New Caledonia', 'Nouméa', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('New Zealand', 'Auckland', 0, 1, 1, 0, 0, 0, 1, 1, 1, 1),
('Nicaragua', 'Managua', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1),
('Niger', 'Niamey', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1),
('Nigeria', 'Lagos', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Niue', 'Alofi', 0, 0, 1, 0, 0, 0, 1, 1, 0, 1),
('Norfolk Island', 'Kingston', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('North Macedonia', 'Skopje', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Northern Mariana Islands', 'Capitol Hill', 0, 0, 1, 0, 0, 0, 1, 1, 0, 1),
('Norway', 'Oslo', 1, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Oman', 'Masqaţ', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Pakistan', 'Karachi', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Palau', 'Koror', 0, 0, 1, 0, 0, 0, 1, 1, 0, 1),
('Panama', 'Panama City', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Papua New Guinea', 'Port Moresby', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Paraguay', 'Asunción', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1),
('Peru', 'Lima', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Philippines', 'Manila', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Pitcairn Islands', 'Adamstown', 0, 0, 1, 0, 0, 0, 1, 1, 0, 1),
('Poland', 'Warsaw', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1),
('Portugal', 'Porto', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1);
INSERT INTO cities_activities (country, city, skiing, sightseeing, beach, lakes, kayaking, sailing, ocean, sea, hiking, nature)
VALUES
('Puerto Rico', 'San Juan', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Qatar', 'Doha', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Réunion', 'Saint-Denis', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Romania', 'Bucharest', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Russia', 'Moscow', 1, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Rwanda', 'Kigali', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Saint Barthelemy', 'Gustavia', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Saint Helena, Ascension, and Tristan da Cunha', 'Jamestown', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Saint Kitts and Nevis', 'Basseterre', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Saint Lucia', 'Castries', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Saint Martin', 'Marigot', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Saint Pierre and Miquelon', 'Saint-Pierre', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Saint Vincent and the Grenadines', 'Calliaqua', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Samoa', 'Apia', 0, 0, 1, 0, 0, 0, 1, 1, 0, 1),
('San Marino', 'Serravalle', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Sao Tome and Principe', 'Sao Tomé', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Saudi Arabia', 'Riyadh', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1),
('Senegal', 'Dakar', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Serbia', 'Belgrade', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Seychelles', 'Victoria', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Sierra Leone', 'Freetown', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Singapore', 'Singapore', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Sint Maarten', 'Philipsburg', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Slovakia', 'Bratislava', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Slovenia', 'Ljubljana', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Solomon Islands', 'Honiara', 0, 0, 1, 0, 0, 0, 1, 1, 0, 1),
('Somalia', 'Mogadishu', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('South Africa', 'Johannesburg', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('South Georgia and South Sandwich Islands', 'Grytviken', 0, 0, 1, 0, 0, 0, 1, 1, 0, 1),
('South Sudan', 'Juba', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Spain', 'Madrid', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Sri Lanka', 'Colombo', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Sudan', 'Khartoum', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Suriname', 'Paramaribo', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Sweden', 'Stockholm', 1, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Switzerland', 'Zürich', 1, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Syria', 'Damascus', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1);

INSERT INTO cities_activities (country, city, skiing, sightseeing, beach, lakes, kayaking, sailing, ocean, sea, hiking, nature)
VALUES
('Taichung', 'Taiwan', 0, 1, 1, 1, 0, 1, 1, 1, 1, 1),
('Dushanbe', 'Tajikistan', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Dar es Salaam', 'Tanzania', 0, 1, 1, 0, 0, 1, 1, 1, 1, 1),
('Bangkok', 'Thailand', 0, 1, 1, 1, 0, 1, 1, 1, 0, 1),
('Dili', 'Timor-Leste', 0, 0, 1, 0, 0, 1, 1, 1, 0, 1),
('Sokodé', 'Togo', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Nuku‘alofa', 'Tonga', 0, 0, 1, 0, 0, 1, 1, 1, 0, 1),
('Chaguanas', 'Trinidad and Tobago', 0, 1, 1, 0, 0, 1, 1, 1, 0, 1),
('Tunis', 'Tunisia', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Istanbul', 'Turkey', 0, 1, 1, 1, 0, 0, 1, 1, 1, 1),
('Ashgabat', 'Turkmenistan', 0, 1, 0, 1, 0, 0, 0, 0, 0, 1),
('Grand Turk', 'Turks and Caicos Islands', 0, 0, 1, 0, 0, 1, 1, 1, 0, 1),
('Funafuti', 'Tuvalu', 0, 0, 1, 0, 0, 1, 1, 1, 0, 1),
('Charlotte Amalie', 'U.S. Virgin Islands', 0, 0, 1, 0, 0, 1, 1, 1, 0, 1),
('Kampala', 'Uganda', 0, 1, 0, 1, 1, 0, 0, 0, 1, 1),
('Kyiv', 'Ukraine', 0, 1, 0, 1, 0, 0, 0, 0, 0, 1),
('Dubai', 'United Arab Emirates', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('London', 'United Kingdom', 0, 1, 0, 1, 0, 0, 0, 0, 0, 1),
('New York', 'United States', 0, 1, 0, 1, 0, 0, 0, 0, 0, 1),
('Montevideo', 'Uruguay', 0, 1, 1, 0, 0, 1, 0, 1, 0, 1),
('Tashkent', 'Uzbekistan', 0, 1, 0, 1, 0, 0, 0, 0, 0, 1),
('Port-Vila', 'Vanuatu', 0, 0, 1, 0, 0, 1, 1, 1, 0, 1),
('Vatican City', 'Vatican City', 0, 1, 0, 0, 0, 0, 0, 0, 0, 1),
('Caracas', 'Venezuela', 0, 1, 1, 0, 0, 1, 0, 1, 0, 1),
('Ho Chi Minh City', 'Vietnam', 0, 1, 1, 0, 0, 1, 1, 1, 0, 1),
('Road Town', 'Virgin Islands, British', 0, 0, 1, 0, 0, 1, 1, 1, 0, 1),
('Mata-Utu', 'Wallis and Futuna', 0, 0, 1, 0, 0, 1, 1, 1, 0, 1),
('Sanaa', 'Yemen', 0, 1, 0, 0, 0, 0, 1, 1, 0, 1),
('Lusaka', 'Zambia', 0, 1, 0, 1, 1, 0, 0, 0, 1, 1),
('Harare', 'Zimbabwe', 0, 1, 0, 1, 1, 0, 0, 0, 0, 1);
INSERT INTO cities_activities (country, city, skiing, sightseeing, beach, lakes, kayaking, sailing, ocean, sea, hiking, nature)
VALUES
('San Rafael', 'Bolivia', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Nili', 'Afghanistan', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Tutong', 'Brunei', 0, 0, 1, 0, 0, 0, 0, 1, 0, 1),
('Isale', 'Burundi', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Panying', 'China', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Sarpang', 'Bhutan', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Erfurt', 'Germany', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('D?v?çi', 'Azerbaijan', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Loango', 'Congo (Brazzaville)', 0, 0, 1, 0, 0, 0, 1, 1, 0, 1),
('Sharan', 'Afghanistan', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Muan', 'Korea, South', 0, 0, 1, 0, 0, 0, 1, 1, 0, 1),
('Pailin', 'Cambodia', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Chengde', 'China', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Pemagatshel', 'Bhutan', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Mersch', 'Luxembourg', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Ş?rur', 'Azerbaijan', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Nyamira', 'Kenya', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Dogbo', 'Benin', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Hongseong', 'Korea, South', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Ta Khmau', 'Cambodia', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Nanyangcun', 'China', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Tsimasham', 'Bhutan', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Redange-sur-Attert', 'Luxembourg', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Q?b?l?', 'Azerbaijan', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Siaya', 'Kenya', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Picos', 'Cabo Verde', 0, 1, 1, 0, 0, 1, 0, 1, 0, 1),
('Sariwon-si', 'Korea, North', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Abakaliki', 'Nigeria', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Huinan', 'China', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Gasa', 'Bhutan', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1);
INSERT INTO cities_activities (country, city, skiing, sightseeing, beach, lakes, kayaking, sailing, ocean, sea, hiking, nature)
VALUES
('Cocieri', 'Moldova', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Jaitpura', 'India', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Murang’a', 'Kenya', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Joao Teves', 'Cabo Verde', 0, 1, 1, 0, 0, 1, 0, 1, 0, 1),
('Munha-dong', 'Korea, North', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Yenagoa', 'Nigeria', 0, 1, 1, 0, 0, 0, 0, 1, 0, 1),
('Bangolo', 'Côte d’Ivoire', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Haa', 'Bhutan', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Şur', 'Oman', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Navsari', 'India', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Ol Kalou', 'Kenya', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Igreja', 'Cabo Verde', 0, 1, 1, 0, 0, 1, 0, 1, 0, 1),
('Sil-li', 'Korea, North', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Isemi-Ile', 'Nigeria', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Sandur', 'Faroe Islands', 0, 1, 0, 0, 0, 0, 1, 1, 1, 1),
('Lhuentse', 'Bhutan', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Hayma’', 'Oman', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Tonk', 'India', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Sotik Post', 'Kenya', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Ribeira Brava', 'Cabo Verde', 0, 1, 1, 0, 0, 1, 0, 1, 0, 1),
('Nhlangano', 'Eswatini', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Kurumul', 'Papua New Guinea', 0, 0, 0, 0, 1, 0, 1, 1, 0, 1),
('Fuglafjor?ur', 'Faroe Islands', 0, 1, 0, 0, 0, 0, 1, 1, 1, 1),
('Tsirang', 'Bhutan', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Şu?ar', 'Oman', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Hubli', 'India', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Kapenguria', 'Kenya', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Nova Sintra', 'Cabo Verde', 0, 1, 1, 0, 0, 1, 0, 1, 0, 1),
('Bosilegrad', 'Serbia', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Buka', 'Papua New Guinea', 0, 0, 0, 0, 1, 0, 1, 1, 0, 1),
('Hov', 'Faroe Islands', 0, 1, 0, 0, 0, 0, 1, 1, 1, 1);
INSERT INTO cities_activities (country, city, skiing, sightseeing, beach, lakes, kayaking, sailing, ocean, sea, hiking, nature)
VALUES
('Idri', 'Libya', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Žagubica', 'Serbia', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Trim', 'Ireland', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Kabarnet', 'Kenya', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Pombas', 'Cabo Verde', 0, 1, 1, 0, 0, 1, 0, 1, 0, 1),
('Požega', 'Serbia', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Pala', 'Chad', 0, 1, 0, 1, 0, 0, 0, 0, 1, 1),
('Vágur', 'Faroe Islands', 0, 1, 0, 0, 0, 0, 1, 1, 1, 1),
('Dalandzadgad', 'Mongolia', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Bali', 'India', 0, 1, 1, 0, 0, 0, 0, 1, 0, 1),
('Wrocław', 'Poland', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Kraków', 'Poland', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Linz', 'Austria', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Salzburg', 'Austria', 1, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Maspalomas', 'Spain', 0, 0, 1, 0, 0, 0, 1, 1, 0, 1),
('Odessa', 'United States', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('New York', 'United States', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1),
('Los Angeles', 'United States', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Hong Kong', 'Hong Kong', 0, 1, 0, 0, 0, 0, 1, 1, 0, 1),
('Miami', 'United States', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Cagliari', 'Italy', 0, 1, 1, 0, 0, 0, 1, 1, 0, 1),
('Ibiza', 'Spain', 0, 0, 1, 0, 0, 0, 1, 1, 0, 1),
('Palma', 'Spain', 0, 0, 1, 0, 0, 0, 1, 1, 0, 1),
('Lisbon', 'Portugal', 0, 1, 1, 0, 0, 1, 1, 1, 0, 1);

