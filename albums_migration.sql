USE codeup_test_db;

GRANT ALL PRIVILEGES ON codeup_test_db TO 'codeup_test_user'@'localhost';

CREATE TABLE IF NOT EXISTS albums
(
    id           INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist       VARCHAR(255) NOT NULL,
    name         VARCHAR(255) NOT NULL, # name of the album
    release_date DATE         NOT NULL, # can also be INT unsigned, int would be better if year, so change soon
    sales        FLOAT        NOT NULL, # sales in millions
    genre        VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

SHOW TABLES;

DESCRIBE albums;

# USE the codeup_test_db and use DESCRIBE and SHOW CREATE to verify that your albums table has been successfully created.





