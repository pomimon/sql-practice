-- Run this file with `cat 01-basic-relationships/setup.sql | sqlite3 01-basic-relationships.db`

DROP TABLE IF EXISTS tracks;
DROP TABLE IF EXISTS album;
DROP TABLE IF EXISTS artist;

CREATE TABLE album (
  id       INTEGER      NOT NULL,
  name     VARCHAR(255) NOT NULL,
  artistId INTEGER      NOT NULL,
  PRIMARY KEY(id),
  FOREIGN KEY(artistId) REFERENCES artist(id)
);

CREATE TABLE tracks (
  id      INTEGER      NOT NULL,
  name    VARCHAR(255) NOT NULL,
  albumId INTEGER      NOT NULL,
  PRIMARY KEY(id),
  FOREIGN KEY(albumId) REFERENCES album(id)
);

CREATE TABLE artist (
  id      INTEGER      NOT NULL,
  name    VARCHAR(255) NOT NULL,
  PRIMARY KEY(id)
);

INSERT INTO
  artist (id, name)
VALUES
  (NULL, 'Thor'),
  (NULL, 'Greasy Burger'),
  (NULL, 'Tasty Tea');

INSERT INTO
  album (id, name, artistId)
VALUES
  (NULL, 'White Clover', 1),
  (NULL, 'Wilman Kala', 2),
  (NULL, 'Pear Apple', 3);

INSERT INTO
  tracks (id, name, albumId)
VALUES
  (NULL, 'Stavanger', 1);
