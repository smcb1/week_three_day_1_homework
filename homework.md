# SQL Homework

The local cinema are having a Marvel Movie Marathon! They have asked you to help maintain their database of movies with times and attendees.

## To access the database:

First, create a database called 'marvel'

```
# terminal
createdb marvel
```

Next, run the provided SQL script to populate your database:

```
# terminal
psql -d marvel -f marvel.sql
```

Use the supplied data as the source of data to answer the questions. Copy the SQL command you have used to get the answer, and paste it below the question, along with the result they gave.

## Questions

1.  Return ALL the data in the 'movies' table.

SELECT * FROM movies;

2.  Return ONLY the name column from the 'people' table

SELECT name FROM people;

3.  Oops! Someone at CodeClan spelled Kimberly's name wrong! Change it to reflect the proper spelling ('Kimberly Clarke' should be 'Kimberly Clark').

UPDATE people SET name = 'Kimberly Clark' WHERE name = 'Kimberly Clarke';

4.  Return ONLY your name from the 'people' table.

SELECT * FROM people WHERE name = 'Simon McBride';


SELECT * FROM people WHERE id = '10';


5.  The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.

DELETE FROM movies WHERE title = 'Batman Begins';


DELETE FROM movies WHERE id = '9';

6.  Create a new entry in the 'people' table with the name of one of the instructors.

INSERT INTO people (name) VALUES ('John McCollum');

7.  John Smith has decided to hijack our movie evening, Remove him from the table of people.

DELETE FROM people WHERE name = 'John Smith';

8.  The cinema has just heard that they will be holding an exclusive midnight showing of 'Avengers: Infinity War'!! Create a new entry in the 'movies' table to reflect this.

INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Infinity War', 2018, '00:00');

9.  The cinema would also like to make the Guardians movies a back to back feature. Find out the show time of "Guardians of the Galaxy" and set the show time of "Guardians of the Galaxy 2" to start two hours later.

UPDATE movies SET show_time = '00:50' WHERE id = '16';


## Extension

1.  Research how to delete multiple entries from your table in a single command

DELETE FROM movies WHERE title LIKE '%Guardians%';

DELETE FROM movies WHERE title !~~ '%Guardians%'; --NOT LIKE

DELETE FROM movies WHERE show_time BETWEEN '00:00' AND '17:00'; -- equivalent to x >= x AND x <= y

DELETE FROM movies WHERE show_time NOT BETWEEN '00:00' AND '20:00'; -- equivalent to x < x OR x > y
