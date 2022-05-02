USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  artist VARCHAR(255) NOT NULL,
  title VARCHAR(255) NOT NULL,
  name VARCHAR(255) NOT NULL, # name of the album
  release_date DATE NOT NULL,   # can also be INT unsigned
  PRIMARY KEY (id)
);
