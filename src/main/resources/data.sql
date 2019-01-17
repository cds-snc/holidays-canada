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

INSERT INTO HOLIDAY (DATE, NAME_EN, NAME_FR) VALUES ('January 1', 'New Year’s Day', 'Jour de l’An');
INSERT INTO HOLIDAY (DATE, NAME_EN, NAME_FR) VALUES ('Second Monday in February', 'Family Day', 'Fête de la famille');

INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE NAME_EN = 'New Year’s Day'), 'AB');
INSERT INTO HOLIDAY_PROVINCE (HOLIDAY_ID, PROVINCE_ID) VALUES ((SELECT ID FROM HOLIDAY WHERE NAME_EN = 'New Year’s Day'), 'ON');
