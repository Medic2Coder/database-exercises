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
    team_id       INT UNSIGNED     NOT NULL

);

