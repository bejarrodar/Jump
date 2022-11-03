CREATE DATABASE music;

USE music;

CREATE TABLE album (
	album_id INT AUTO_INCREMENT PRIMARY KEY,
    album_name CHAR(255),
    album_release DATE,
    genre CHAR(255)
);

CREATE TABLE song (
	song_id INT AUTO_INCREMENT PRIMARY KEY,
    song_name CHAR(255),
    length_sec INT,
    album_id INT,
    FOREIGN KEY (album_id) REFERENCES album(album_id)
);

CREATE TABLE artist (
	artist_id INT AUTO_INCREMENT PRIMARY KEY,
    artist_name CHAR(255)
);

CREATE TABLE album_artist (
	album_id INT,
    artist_id INT,
    PRIMARY KEY(album_id,artist_id),
    FOREIGN KEY (album_id) REFERENCES album(album_id),
    FOREIGN KEY (artist_id) REFERENCES artist(artist_id)
);

INSERT INTO album(album_name,album_release,genre) 
VALUES ('PTX Vol. IV','2017-04-07','Mix');

INSERT INTO song (song_name,length_sec,album_id)
VALUES ('Imagine',260,1);

INSERT INTO artist (artist_name)
VALUES ('Penatonix');

INSERT INTO album_artist
VALUES (1,1);

SELECT * FROM artist WHERE artist_id = 1;

SELECT * FROM album_artist WHERE artist_id = 1;