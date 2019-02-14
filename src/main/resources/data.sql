INSERT INTO PROVINCE (ID, NAME_EN, NAME_FR) VALUES ('AB', 'Alberta', 'Alberta');
INSERT INTO PROVINCE (ID, NAME_EN, NAME_FR) VALUES ('BC', 'British Columbia', 'Colombie-Britannique');
INSERT INTO PROVINCE (ID, NAME_EN, NAME_FR) VALUES ('MB', 'Manitoba', 'Manitoba');
INSERT INTO PROVINCE (ID, NAME_EN, NAME_FR) VALUES ('NB', 'New Brunswick', 'Nouveau-Brunswick');
INSERT INTO PROVINCE (ID, NAME_EN, NAME_FR) VALUES ('NL', 'Newfoundland and Labrador', 'Terre-Neuve-et-Labrador');
INSERT INTO PROVINCE (ID, NAME_EN, NAME_FR) VALUES ('NS', 'Nova Scotia', 'Nouvelle-Écosse');
INSERT INTO PROVINCE (ID, NAME_EN, NAME_FR) VALUES ('NT', 'Northwest Territories', 'Territoires du Nord-Ouest');
INSERT INTO PROVINCE (ID, NAME_EN, NAME_FR) VALUES ('NU', 'Nunavut', 'Nunavut');
INSERT INTO PROVINCE (ID, NAME_EN, NAME_FR) VALUES ('ON', 'Ontario', 'Ontario');
INSERT INTO PROVINCE (ID, NAME_EN, NAME_FR) VALUES ('PE', 'Prince Edward Island', 'Île-du-Prince-Édouard');
INSERT INTO PROVINCE (ID, NAME_EN, NAME_FR) VALUES ('QC', 'Quebec', 'Québec');
INSERT INTO PROVINCE (ID, NAME_EN, NAME_FR) VALUES ('SK', 'Saskatchewan', 'Saskatchewan');
INSERT INTO PROVINCE (ID, NAME_EN, NAME_FR) VALUES ('YT', 'Yukon', 'Yukon');


INSERT INTO HOLIDAY (DATE_STRING, NAME_EN, NAME_FR) VALUES ('January 1', 'New Year’s Day', 'Jour de l’An');
INSERT INTO HOLIDAY (DATE_STRING, NAME_EN, NAME_FR) VALUES ('Third Monday in February', 'Louis Riel Day', 'Journée Louis Riel');
INSERT INTO HOLIDAY (DATE_STRING, NAME_EN, NAME_FR) VALUES ('Third Monday in February', 'Islander Day', 'Fête des Insulaires');
INSERT INTO HOLIDAY (DATE_STRING, NAME_EN, NAME_FR) VALUES ('Third Monday in February', 'Family Day', 'Fête de la famille');
INSERT INTO HOLIDAY (DATE_STRING, NAME_EN, NAME_FR) VALUES ('Third Monday in February', 'Heritage Day', 'Fête du Patrimoine');
INSERT INTO HOLIDAY (DATE_STRING, NAME_EN, NAME_FR) VALUES ('March 17', 'Saint Patrick’s Day', 'Jour de la Saint-Patrick');
INSERT INTO HOLIDAY (DATE_STRING, NAME_EN, NAME_FR) VALUES ('Friday before Easter Day', 'Good Friday', 'Vendredi saint');
INSERT INTO HOLIDAY (DATE_STRING, NAME_EN, NAME_FR) VALUES ('Monday after Easter Day', 'Easter Monday', 'Lundi de Pâques');
INSERT INTO HOLIDAY (DATE_STRING, NAME_EN, NAME_FR) VALUES ('April 23', 'Saint George’s Day', 'Jour de St. George');
INSERT INTO HOLIDAY (DATE_STRING, NAME_EN, NAME_FR) VALUES ('Monday on or before May 24', 'National Patriots’ Day', 'Journée nationale des patriotes');
INSERT INTO HOLIDAY (DATE_STRING, NAME_EN, NAME_FR) VALUES ('Monday on or before May 24', 'Victoria Day', 'Fête de la Reine');
INSERT INTO HOLIDAY (DATE_STRING, NAME_EN, NAME_FR) VALUES ('June 21', 'National Aboriginal Day', 'Journée nationale des Autochthones');
INSERT INTO HOLIDAY (DATE_STRING, NAME_EN, NAME_FR) VALUES ('June 24', 'Discovery Day / National Holiday', 'Journée découverte / Fête nationale du Québec / Saint-Jean-Baptiste');
INSERT INTO HOLIDAY (DATE_STRING, NAME_EN, NAME_FR) VALUES ('July 1', 'Canada Day', 'Fête du Canada');
INSERT INTO HOLIDAY (DATE_STRING, NAME_EN, NAME_FR) VALUES ('July 12', 'Orangemen’s Day', 'Fête des orangistes');
INSERT INTO HOLIDAY (DATE_STRING, NAME_EN, NAME_FR) VALUES ('First Monday in August', 'Civic Holiday', 'Premier lundi d’août');
INSERT INTO HOLIDAY (DATE_STRING, NAME_EN, NAME_FR) VALUES ('First Monday in August', 'Heritage Day', 'Fête du patrimoine');
INSERT INTO HOLIDAY (DATE_STRING, NAME_EN, NAME_FR) VALUES ('First Monday in August', 'New Brunswick Day', 'Jour de Nouveau Brunswick');
INSERT INTO HOLIDAY (DATE_STRING, NAME_EN, NAME_FR) VALUES ('First Monday in August', 'Natal Day', 'Jour de la Fondation');
INSERT INTO HOLIDAY (DATE_STRING, NAME_EN, NAME_FR) VALUES ('Third Friday in August', 'Gold Cup Parade Day', 'Défilé de la Coupe d’or');
INSERT INTO HOLIDAY (DATE_STRING, NAME_EN, NAME_FR) VALUES ('Third Monday in August', 'Discovery Day', 'Jour de la Découverte');
INSERT INTO HOLIDAY (DATE_STRING, NAME_EN, NAME_FR) VALUES ('First Monday in September', 'Labour Day', 'Fête du travail');
INSERT INTO HOLIDAY (DATE_STRING, NAME_EN, NAME_FR) VALUES ('Second Monday in October', 'Thanksgiving', 'Action de grâce');
INSERT INTO HOLIDAY (DATE_STRING, NAME_EN, NAME_FR) VALUES ('November 11', 'Armistice Day', 'Jour de l’Armistice');
INSERT INTO HOLIDAY (DATE_STRING, NAME_EN, NAME_FR) VALUES ('November 11', 'Remembrance Day', 'Jour du Souvenir');
INSERT INTO HOLIDAY (DATE_STRING, NAME_EN, NAME_FR) VALUES ('December 25', 'Christmas Day', 'Noël');
INSERT INTO HOLIDAY (DATE_STRING, NAME_EN, NAME_FR) VALUES ('December 26', 'Boxing Day', 'Lendemain de Noël');

UPDATE HOLIDAY SET FEDERAL = 1 WHERE NAME_EN = 'New Year’s Day';
UPDATE HOLIDAY SET FEDERAL = 1 WHERE NAME_EN = 'Good Friday';
UPDATE HOLIDAY SET FEDERAL = 1 WHERE NAME_EN = 'Easter Monday';
UPDATE HOLIDAY SET FEDERAL = 1 WHERE NAME_EN = 'Victoria Day';
UPDATE HOLIDAY SET FEDERAL = 1 WHERE NAME_EN = 'Canada Day';
UPDATE HOLIDAY SET FEDERAL = 1 WHERE NAME_EN = 'Civic Holiday';
UPDATE HOLIDAY SET FEDERAL = 1 WHERE NAME_EN = 'Labour Day';
UPDATE HOLIDAY SET FEDERAL = 1 WHERE NAME_EN = 'Thanksgiving';
UPDATE HOLIDAY SET FEDERAL = 1 WHERE NAME_EN = 'Remembrance Day';
UPDATE HOLIDAY SET FEDERAL = 1 WHERE NAME_EN = 'Christmas Day';
UPDATE HOLIDAY SET FEDERAL = 1 WHERE NAME_EN = 'Boxing Day';

INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'January 1' AND NAME_EN = 'New Year’s Day')), 'AB');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'January 1' AND NAME_EN = 'New Year’s Day')), 'BC');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'January 1' AND NAME_EN = 'New Year’s Day')), 'MB');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'January 1' AND NAME_EN = 'New Year’s Day')), 'NB');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'January 1' AND NAME_EN = 'New Year’s Day')), 'NL');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'January 1' AND NAME_EN = 'New Year’s Day')), 'NT');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'January 1' AND NAME_EN = 'New Year’s Day')), 'NS');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'January 1' AND NAME_EN = 'New Year’s Day')), 'NU');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'January 1' AND NAME_EN = 'New Year’s Day')), 'ON');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'January 1' AND NAME_EN = 'New Year’s Day')), 'PE');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'January 1' AND NAME_EN = 'New Year’s Day')), 'QC');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'January 1' AND NAME_EN = 'New Year’s Day')), 'SK');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'January 1' AND NAME_EN = 'New Year’s Day')), 'YT');

INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Third Monday in February' AND NAME_EN = 'Louis Riel Day')), 'MB');

INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Third Monday in February' AND NAME_EN = 'Islander Day')), 'PE');

INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Third Monday in February' AND NAME_EN = 'Family Day')), 'AB');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Third Monday in February' AND NAME_EN = 'Family Day')), 'BC');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Third Monday in February' AND NAME_EN = 'Family Day')), 'NB');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Third Monday in February' AND NAME_EN = 'Family Day')), 'ON');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Third Monday in February' AND NAME_EN = 'Family Day')), 'SK');

INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Third Monday in February' AND NAME_EN = 'Heritage Day')), 'NS');

INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'March 17' AND NAME_EN = 'Saint Patrick’s Day')), 'NL');

INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Friday before Easter Day' AND NAME_EN = 'Good Friday')), 'AB');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Friday before Easter Day' AND NAME_EN = 'Good Friday')), 'BC');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Friday before Easter Day' AND NAME_EN = 'Good Friday')), 'MB');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Friday before Easter Day' AND NAME_EN = 'Good Friday')), 'NB');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Friday before Easter Day' AND NAME_EN = 'Good Friday')), 'NL');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Friday before Easter Day' AND NAME_EN = 'Good Friday')), 'NT');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Friday before Easter Day' AND NAME_EN = 'Good Friday')), 'NS');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Friday before Easter Day' AND NAME_EN = 'Good Friday')), 'NU');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Friday before Easter Day' AND NAME_EN = 'Good Friday')), 'ON');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Friday before Easter Day' AND NAME_EN = 'Good Friday')), 'PE');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Friday before Easter Day' AND NAME_EN = 'Good Friday')), 'QC');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Friday before Easter Day' AND NAME_EN = 'Good Friday')), 'SK');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Friday before Easter Day' AND NAME_EN = 'Good Friday')), 'YT');

INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Monday after Easter Day' AND NAME_EN = 'Easter Monday')), 'AB');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Monday after Easter Day' AND NAME_EN = 'Easter Monday')), 'PE');

INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'April 23' AND NAME_EN = 'Saint George’s Day')), 'NL');

INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Monday on or before May 24' AND NAME_EN = 'National Patriots’ Day')), 'QC');

INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Monday on or before May 24' AND NAME_EN = 'Victoria Day')), 'AB');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Monday on or before May 24' AND NAME_EN = 'Victoria Day')), 'BC');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Monday on or before May 24' AND NAME_EN = 'Victoria Day')), 'MB');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Monday on or before May 24' AND NAME_EN = 'Victoria Day')), 'NB');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Monday on or before May 24' AND NAME_EN = 'Victoria Day')), 'NT');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Monday on or before May 24' AND NAME_EN = 'Victoria Day')), 'NS');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Monday on or before May 24' AND NAME_EN = 'Victoria Day')), 'NU');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Monday on or before May 24' AND NAME_EN = 'Victoria Day')), 'ON');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Monday on or before May 24' AND NAME_EN = 'Victoria Day')), 'PE');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Monday on or before May 24' AND NAME_EN = 'Victoria Day')), 'SK');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Monday on or before May 24' AND NAME_EN = 'Victoria Day')), 'YT');

INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'June 21' AND NAME_EN = 'National Aboriginal Day')), 'NT');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'June 21' AND NAME_EN = 'National Aboriginal Day')), 'YT');

INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'June 24' AND NAME_EN = 'Discovery Day / National Holiday')), 'NL');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'June 24' AND NAME_EN = 'Discovery Day / National Holiday')), 'QC');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'June 24' AND NAME_EN = 'Discovery Day / National Holiday')), 'YT');

INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'July 1' AND NAME_EN = 'Canada Day')), 'AB');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'July 1' AND NAME_EN = 'Canada Day')), 'BC');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'July 1' AND NAME_EN = 'Canada Day')), 'MB');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'July 1' AND NAME_EN = 'Canada Day')), 'NB');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'July 1' AND NAME_EN = 'Canada Day')), 'NL');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'July 1' AND NAME_EN = 'Canada Day')), 'NT');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'July 1' AND NAME_EN = 'Canada Day')), 'NS');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'July 1' AND NAME_EN = 'Canada Day')), 'NU');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'July 1' AND NAME_EN = 'Canada Day')), 'ON');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'July 1' AND NAME_EN = 'Canada Day')), 'PE');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'July 1' AND NAME_EN = 'Canada Day')), 'QC');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'July 1' AND NAME_EN = 'Canada Day')), 'SK');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'July 1' AND NAME_EN = 'Canada Day')), 'YT');

INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'July 12' AND NAME_EN = 'Orangemen’s Day')), 'NL');

INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'First Monday in August' AND NAME_EN = 'Civic Holiday')), 'BC');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'First Monday in August' AND NAME_EN = 'Civic Holiday')), 'MB');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'First Monday in August' AND NAME_EN = 'Civic Holiday')), 'NL');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'First Monday in August' AND NAME_EN = 'Civic Holiday')), 'NT');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'First Monday in August' AND NAME_EN = 'Civic Holiday')), 'NU');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'First Monday in August' AND NAME_EN = 'Civic Holiday')), 'ON');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'First Monday in August' AND NAME_EN = 'Civic Holiday')), 'SK');

INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'First Monday in August' AND NAME_EN = 'Heritage Day')), 'AB');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'First Monday in August' AND NAME_EN = 'Heritage Day')), 'YT');

INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'First Monday in August' AND NAME_EN = 'New Brunswick Day')), 'NB');

INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'First Monday in August' AND NAME_EN = 'Natal Day')), 'NS');

INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Third Friday in August' AND NAME_EN = 'Gold Cup Parade Day')), 'PE');

INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Third Monday in August' AND NAME_EN = 'Discovery Day')), 'YT');

INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'First Monday in September' AND NAME_EN = 'Labour Day')), 'AB');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'First Monday in September' AND NAME_EN = 'Labour Day')), 'BC');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'First Monday in September' AND NAME_EN = 'Labour Day')), 'MB');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'First Monday in September' AND NAME_EN = 'Labour Day')), 'NB');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'First Monday in September' AND NAME_EN = 'Labour Day')), 'NL');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'First Monday in September' AND NAME_EN = 'Labour Day')), 'NT');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'First Monday in September' AND NAME_EN = 'Labour Day')), 'NS');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'First Monday in September' AND NAME_EN = 'Labour Day')), 'NU');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'First Monday in September' AND NAME_EN = 'Labour Day')), 'ON');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'First Monday in September' AND NAME_EN = 'Labour Day')), 'PE');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'First Monday in September' AND NAME_EN = 'Labour Day')), 'QC');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'First Monday in September' AND NAME_EN = 'Labour Day')), 'SK');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'First Monday in September' AND NAME_EN = 'Labour Day')), 'YT');

INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Second Monday in October' AND NAME_EN = 'Thanksgiving')), 'AB');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Second Monday in October' AND NAME_EN = 'Thanksgiving')), 'BC');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Second Monday in October' AND NAME_EN = 'Thanksgiving')), 'MB');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Second Monday in October' AND NAME_EN = 'Thanksgiving')), 'NB');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Second Monday in October' AND NAME_EN = 'Thanksgiving')), 'NL');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Second Monday in October' AND NAME_EN = 'Thanksgiving')), 'NT');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Second Monday in October' AND NAME_EN = 'Thanksgiving')), 'NS');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Second Monday in October' AND NAME_EN = 'Thanksgiving')), 'NU');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Second Monday in October' AND NAME_EN = 'Thanksgiving')), 'ON');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Second Monday in October' AND NAME_EN = 'Thanksgiving')), 'PE');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Second Monday in October' AND NAME_EN = 'Thanksgiving')), 'QC');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Second Monday in October' AND NAME_EN = 'Thanksgiving')), 'SK');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'Second Monday in October' AND NAME_EN = 'Thanksgiving')), 'YT');

INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'November 11' AND NAME_EN = 'Armistice Day')), 'NL');

INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'November 11' AND NAME_EN = 'Remembrance Day')), 'AB');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'November 11' AND NAME_EN = 'Remembrance Day')), 'BC');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'November 11' AND NAME_EN = 'Remembrance Day')), 'NB');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'November 11' AND NAME_EN = 'Remembrance Day')), 'NT');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'November 11' AND NAME_EN = 'Remembrance Day')), 'NS');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'November 11' AND NAME_EN = 'Remembrance Day')), 'NU');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'November 11' AND NAME_EN = 'Remembrance Day')), 'PE');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'November 11' AND NAME_EN = 'Remembrance Day')), 'SK');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'November 11' AND NAME_EN = 'Remembrance Day')), 'YT');

INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'December 25' AND NAME_EN = 'Christmas Day')), 'AB');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'December 25' AND NAME_EN = 'Christmas Day')), 'BC');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'December 25' AND NAME_EN = 'Christmas Day')), 'MB');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'December 25' AND NAME_EN = 'Christmas Day')), 'NB');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'December 25' AND NAME_EN = 'Christmas Day')), 'NL');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'December 25' AND NAME_EN = 'Christmas Day')), 'NT');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'December 25' AND NAME_EN = 'Christmas Day')), 'NS');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'December 25' AND NAME_EN = 'Christmas Day')), 'NU');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'December 25' AND NAME_EN = 'Christmas Day')), 'ON');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'December 25' AND NAME_EN = 'Christmas Day')), 'PE');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'December 25' AND NAME_EN = 'Christmas Day')), 'QC');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'December 25' AND NAME_EN = 'Christmas Day')), 'SK');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'December 25' AND NAME_EN = 'Christmas Day')), 'YT');

INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'December 26' AND NAME_EN = 'Boxing Day')), 'AB');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'December 26' AND NAME_EN = 'Boxing Day')), 'NB');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'December 26' AND NAME_EN = 'Boxing Day')), 'NS');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'December 26' AND NAME_EN = 'Boxing Day')), 'ON');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE (DATE_STRING = 'December 26' AND NAME_EN = 'Boxing Day')), 'PE');
