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

INSERT INTO players (first_name, last_name, jersey_number, is_active, team_id)
VALUES ('Joe', 'Thrash', 1, 1, 1),
       ('COREY', 'SEGAR', 5, 1, 1),
       ('JACK', 'Thrash', 3, 1, 1),
       ('LUIS', 'GARCIA', 77, 2, 1)
ON DUPLICATE KEY UPDATE first_name = VALUES(first_name), last_name = VALUES(last_name), jersey_number = VALUES(jersey_number), is_active = VALUES(is_active), team_id = VALUES(team_id);

INSERT INTO positions (position)
VALUES ('SS'),
       ('2B'),
       ('3B'),
       ('C'),
       ('1B'),
       ('LF'),
       ('CF'),
       ('RF'),
       ('DH')
ON DUPLICATE KEY UPDATE position = VALUES(position);

INSERT INTO players_positions (player_id, position_id)
VALUES (1, 1),
       (2, 3),
       (3, 3),
       (4, 4),
       (5, 5),
       (6, 6)
ON DUPLICATE KEY UPDATE player_id = VALUES(player_id), position_id = VALUES(position_id);



