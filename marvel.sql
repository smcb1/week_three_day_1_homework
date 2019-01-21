DROP TABLE movies;
DROP TABLE people;

CREATE TABLE movies (
	id SERIAL8 PRIMARY KEY,
	title VARCHAR(255),
	year INT2,
	show_time VARCHAR(255)
);

CREATE TABLE people (
	id SERIAL8 PRIMARY KEY,
	name VARCHAR(255)
);
INSERT INTO people (name) VALUES ('Ewan Bailey');
INSERT INTO people (name) VALUES ('Stuart Bell');
INSERT INTO people (name) VALUES ('Ian Bone');
INSERT INTO people (name) VALUES ('Collin Bull');
INSERT INTO people (name) VALUES ('Kimberly Clarke');
INSERT INTO people (name) VALUES ('Eloise Coveny');
INSERT INTO people (name) VALUES ('James Davidson');
INSERT INTO people (name) VALUES ('Kyle Johnston');
INSERT INTO people (name) VALUES ('Heather Malloch');
INSERT INTO people (name) VALUES ('Simon McBride');
INSERT INTO people (name) VALUES ('John Smith');
INSERT INTO people (name) VALUES ('Carme Mias');
INSERT INTO people (name) VALUES ('John Page');
INSERT INTO people (name) VALUES ('Delia Paternina');
INSERT INTO people (name) VALUES ('Robert Templeton');
INSERT INTO people (name) VALUES ('Neil Watkins');

INSERT INTO movies (title, year, show_time) VALUES ('Iron Man', 2008, '20:30');
INSERT INTO movies (title, year, show_time) VALUES ('The Incredible Hulk', 2008, '16:50');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 2', 2010, '19:40');
INSERT INTO movies (title, year, show_time) VALUES ('Thor', 2011, '14:20');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The First Avenger', 2011, '17:55');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers Assemble', 2012, '16:50');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 3', 2013, '23:10');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: The Dark World', 2013, '22:20');
INSERT INTO movies (title, year, show_time) VALUES ('Batman Begins', 2005, '12:50');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The Winter Soldier', 2014, '15:30');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy', 2014, '22:50');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Age of Ultron', 2015, '23:45');
INSERT INTO movies (title, year, show_time) VALUES ('Ant-Man', 2015, '16:20');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: Civil War', 2016, '22:25');
INSERT INTO movies (title, year, show_time) VALUES ('Doctor Strange', 2016, '12:50');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2017, '22:10');
INSERT INTO movies (title, year, show_time) VALUES ('Spider-Man: Homecoming', 2017, '15:40');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: Ragnarok', 2017, '19:35');
INSERT INTO movies (title, year, show_time) VALUES ('Black Panther', 2018, '16:50');

--1--SELECT * FROM movies ORDER BY year;
--2--SELECT name FROM people;
--3--UPDATE people SET name = 'Kimberly Clark' WHERE name = 'Kimberly Clarke';
--4--SELECT * FROM people WHERE name = 'Simon McBride';
--5--SELECT * FROM people WHERE id = '10';
--6--DELETE FROM movies WHERE title = 'Batman Begins';
--7--DELETE FROM movies WHERE id = '9';
--8--INSERT INTO people (name) VALUES ('John McCollum');
--9--DELETE FROM people WHERE name = 'John Smith';
--10--INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Infinity War', 2018, '00:00');
--11--UPDATE movies SET show_time = '00:50' WHERE id = '16';

--Extension
--DELETE FROM movies WHERE title LIKE '%Guardians%';
--DELETE FROM movies WHERE title !~~ '%Guardians%'; --NOT LIKE
--DELETE FROM movies WHERE show_time BETWEEN '00:00' AND '17:00'; -- Equivalent to x >= x AND x <= y
--DELETE FROM movies WHERE show_time NOT BETWEEN '00:00' AND '20:00'; -- Equivalent to x < x OR x > y
