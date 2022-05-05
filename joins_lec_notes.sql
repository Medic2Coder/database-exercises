CREATE TABLE IF NOT EXISTS teams
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    city VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS players
(
    id            INT UNSIGNED     NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name    varchar(255)     NOT NULL,
    last_name     varchar(255)     NOT NULL,
    jersey_number INT UNSIGNED     NOT NULL,
    is_active     TINYINT UNSIGNED NOT NULL,
    team_id       INT UNSIGNED     NOT NULL,
    FOREIGN KEY (team_id) REFERENCES teams(id)

);

CREATE TABLE IF NOT EXISTS positions
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    position CHAR(2) NOT NULL
);

CREATE TABLE IF NOT EXISTS players_positions
(
    player_id INT UNSIGNED NOT NULL,
    position_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (player_id) REFERENCES players(id),
    FOREIGN KEY (position_id) REFERENCES positions(id)
);

INSERT INTO teams (city, name)
VALUES ('New York', 'Yankees'),
       ('Boston', 'Red Sox'),
       ('Tampa Bay', 'Rays'),
       ('Philadelphia', 'Phillies'),
       ('Toronto', 'Blue Jays')
ON DUPLICATE KEY UPDATE city = VALUES(city), name = VALUES(name);


