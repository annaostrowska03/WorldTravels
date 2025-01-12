/*ALTER TABLE cities_to_recommend
ADD cost_index FLOAT;*/

UPDATE cities_to_recommend
SET cost_index = cic.[Cost of Living Plus Rent Index]
FROM cost_index_cities cic
WHERE LEFT(cities_to_recommend.country, 5) = LEFT(cic.country,5);

UPDATE cities_to_recommend
SET cost_index = 38.9
WHERE country='Korea, South';

UPDATE cities_to_recommend
SET cost_index = 25.2
WHERE country='Zambia';

UPDATE cities_to_recommend
SET cost_index = 29.84
WHERE country='Yemen';

UPDATE cities_to_recommend
SET cost_index = 18.3
WHERE country='Rwanda';

UPDATE cities_to_recommend
SET cost_index = 60.0 --thats a guess but the number doesnt matter, only if its low or high and i found out that its a really expensive place for travelling
WHERE country='Wallis and Futuna';

UPDATE cities_to_recommend
SET cost_index = 55.0 --idk, i've read that it's also expensive 
WHERE country='Virgin Islands, British';

UPDATE cities_to_recommend
SET cost_index = 41 --a bit more expensive than Italy
WHERE country='Vatican City';

UPDATE cities_to_recommend
SET cost_index = 63.0
WHERE country='U.S. Virgin Islands';

UPDATE cities_to_recommend
SET cost_index = 60.0
WHERE country='Vanuatu';

/*ALTER TABLE cities_to_recommend
ADD cost_summary VARCHAR(20);*/


UPDATE c
SET c.cost_summary = CASE
    WHEN pr.percentile = 1 THEN 'very high'  
    WHEN pr.percentile = 2 THEN 'high'       
    WHEN pr.percentile = 3 THEN 'average'    
    WHEN pr.percentile = 4 THEN 'low'        
    WHEN pr.percentile = 5 THEN 'very low'   
    ELSE NULL                          
END
FROM cities_to_recommend c
JOIN (
    SELECT country, 
           cost_index,
           NTILE(5) OVER (ORDER BY cost_index DESC) AS percentile
    FROM cities_to_recommend
    WHERE cost_index IS NOT NULL 
) AS pr ON c.country = pr.country;


UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country='Tajikistan';

UPDATE cities_to_recommend
SET cost_summary = 'high'
WHERE country='Tonga';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country='Sudan';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country='Somalia';

UPDATE cities_to_recommend
SET cost_summary = 'average'
WHERE country='Solomon Islands';

UPDATE cities_to_recommend
SET cost_summary = 'very high'
WHERE country='Seychelles';

UPDATE cities_to_recommend
SET cost_summary = 'average'
WHERE country='Senegal';
UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Afghanistan';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'American Samoa';

UPDATE cities_to_recommend
SET cost_summary = 'high'
WHERE country = 'Andorra';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Angola';

UPDATE cities_to_recommend
SET cost_summary = 'average'
WHERE country = 'Anguilla';

UPDATE cities_to_recommend
SET cost_summary = 'high'
WHERE country = 'Antigua and Barbuda';

UPDATE cities_to_recommend
SET cost_summary = 'average'
WHERE country = 'Aruba';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Belize';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Benin';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Bhutan';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Bonaire, Sint Eustatius, and Saba';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Burkina Faso';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Burma';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Burundi';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Cabo Verde';

UPDATE cities_to_recommend
SET cost_summary = 'high'
WHERE country = 'Cayman Islands';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Central African Republic';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Chad';

UPDATE cities_to_recommend
SET cost_summary = 'average'
WHERE country = 'Christmas Island';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Comoros';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Congo (Brazzaville)';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Congo (Kinshasa)';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Cook Islands';

UPDATE cities_to_recommend
SET cost_summary = 'average'
WHERE country = 'Côte d’Ivoire';

UPDATE cities_to_recommend
SET cost_summary = 'high'
WHERE country = 'Curaçao';

UPDATE cities_to_recommend
SET cost_summary = 'high'
WHERE country = 'Djibouti';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Equatorial Guinea';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Eritrea';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Eswatini';

UPDATE cities_to_recommend
SET cost_summary = 'high'
WHERE country = 'Falkland Islands (Islas Malvinas)';

UPDATE cities_to_recommend
SET cost_summary = 'high'
WHERE country = 'Faroe Islands';

UPDATE cities_to_recommend
SET cost_summary = 'high'
WHERE country = 'French Guiana';

UPDATE cities_to_recommend
SET cost_summary = 'average'
WHERE country = 'French Polynesia';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Gabon';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Gambia, The';

UPDATE cities_to_recommend
SET cost_summary = 'high'
WHERE country = 'Gibraltar';

UPDATE cities_to_recommend
SET cost_summary = 'high'
WHERE country = 'Greenland';

UPDATE cities_to_recommend
SET cost_summary = 'high'
WHERE country = 'Grenada';

UPDATE cities_to_recommend
SET cost_summary = 'average'
WHERE country = 'Guadeloupe';

UPDATE cities_to_recommend
SET cost_summary = 'high'
WHERE country = 'Guam';

UPDATE cities_to_recommend
SET cost_summary = 'average'
WHERE country = 'Guernsey';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Guinea';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Guinea-Bissau';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Guyana';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Haiti';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Honduras';

UPDATE cities_to_recommend
SET cost_summary = 'high'
WHERE country = 'Isle of Man';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Jersey';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Kiribati';

UPDATE cities_to_recommend
SET cost_summary = 'high'
WHERE country = 'Korea, North';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Laos';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Lesotho';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Liberia';

UPDATE cities_to_recommend
SET cost_summary = 'high'
WHERE country = 'Liechtenstein';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Macau';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Malawi';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Mali';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Marshall Islands';

UPDATE cities_to_recommend
SET cost_summary = 'high'
WHERE country = 'Martinique';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Mayotte';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Micronesia, Federated States of';

UPDATE cities_to_recommend
SET cost_summary = 'high'
WHERE country = 'Monaco';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Montserrat';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Mozambique';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Nauru';

UPDATE cities_to_recommend
SET cost_summary = 'high'
WHERE country = 'New Caledonia';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Nicaragua';

UPDATE cities_to_recommend
SET cost_summary = 'average'
WHERE country = 'Niue';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Norfolk Island';

UPDATE cities_to_recommend
SET cost_summary = 'high'
WHERE country = 'Palau';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Papua New Guinea';

UPDATE cities_to_recommend
SET cost_summary = 'average'
WHERE country = 'Pitcairn Islands';

UPDATE cities_to_recommend
SET cost_summary = 'high'
WHERE country = 'Reunion';

UPDATE cities_to_recommend
SET cost_summary = 'high'
WHERE country = 'Saint Barthelemy';

UPDATE cities_to_recommend
SET cost_summary = 'very low'
WHERE country = 'Saint Helena, Ascension, and Tristan da Cunha';

UPDATE cities_to_recommend
SET cost_summary = 'high'
WHERE country = 'Saint Kitts and Nevis';

UPDATE cities_to_recommend
SET cost_summary = 'average'
WHERE country = 'Saint Lucia';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Saint Martin';

UPDATE cities_to_recommend
SET cost_summary = 'high'
WHERE country = 'Saint Pierre and Miquelon';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Saint Vincent and the Grenadines';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Samoa';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Sierra Leone';

UPDATE cities_to_recommend
SET cost_summary = 'high'
WHERE country = 'Sint Maarten';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Timor-Leste';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Togo';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Turkmenistan';

UPDATE cities_to_recommend
SET cost_summary = 'high'
WHERE country = 'Turks and Caicos Islands';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Tuvalu';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Ethiopia';

UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Suriname';
UPDATE cities_to_recommend
SET cost_summary = 'low'
WHERE country = 'Namibia';
UPDATE cities_to_recommend
SET cost_summary = 'average'
WHERE country = 'Sao Tome and Principe';
UPDATE cities_to_recommend
SET cost_summary = 'average'
WHERE country = 'Mongolia';

UPDATE cities_to_recommend
SET cost_summary = 'very high'
WHERE country = 'Bermuda';
UPDATE cities_to_recommend
SET cost_summary = 'high'
WHERE country = 'Brunei';
UPDATE cities_to_recommend
SET cost_summary = 'high'
WHERE country = 'Maldives';
UPDATE cities_to_recommend
SET cost_summary = 'high'
WHERE country = 'San Marino';

