USE codeup_test_db;

START TRANSACTION;

TRUNCATE albums;

INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Michael Jackson', 'Thriller', '1982', '50.2', 'pop'),
('AC/DC', 'Highway to Hell', '1980', '29.5', 'Hard Rock'),
('Whitney Houston', 'The Bodyguard', '1992', '32.4', 'Pop'),
('Meat Loaf', 'Bat Out of Hell', '1977', '25.2', 'Hard Rock'),
('Eagles', 'Their Greatest Hits', '1975', '17.8', 'Rock'),
('Bee Gees', 'Stayin\' Alive', '1977', '17.8', 'Rock'),
('Fleetwood Mac', 'Rumours', '1977', '17.8', 'Rock'),
('Shania Twain', 'Luv Is Rage', '1977', '17.8', 'Rock'),
('Grease', 'Grease', '1978', '17.8', 'Rock'),
('Led Zeppelin', 'Led Zeppelin IV', '1971', '17.8', 'Rock')
;

SELECT * FROM albums;

COMMIT; 




