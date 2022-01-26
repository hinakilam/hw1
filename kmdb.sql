-- In this assignment, you'll be building the domain model, database 
-- structure, and data for "KMDB" (the Kellogg Movie Database).
-- The end product will be a report that prints the movies and the 
-- top-billed cast for each movie in the database.

-- Requirements/assumptions
--
-- - There will only be three movies in the database – the three films
--   that make up Christopher Nolan's Batman trilogy
-- - Movie data includes the movie title, year released, MPAA rating,
--   and director
-- - A movie has a single director
-- - A person can be the director of and/or play a role in a movie
-- - Everything you need to do in this assignment is marked with TODO!

-- Rubric
-- 
-- There are three deliverables for this assignment, all delivered via
-- this file and submitted via GitHub and Canvas:
-- - A domain model, implemented via CREATE TABLE statements for each
--   model/table. Also, include DROP TABLE IF EXISTS statements for each
--   table, so that each run of this script starts with a blank database.
--   (10 points)
-- - Insertion of "Batman" sample data into tables (5 points)
-- - Selection of data, so that something similar to the following sample
--   "report" can be achieved (5 points)

-- Submission
-- 
-- - "Use this template" to create a brand-new "hw1" repository in your
--   personal GitHub account, e.g. https://github.com/<USERNAME>/hw1
-- - Do the assignment, committing and syncing often
-- - When done, commit and sync a final time, before submitting the GitHub
--   URL for the finished "hw1" repository as the "Website URL" for the 
--   Homework 1 assignment in Canvas

-- Successful sample output is as shown:

-- Movies
-- ======

-- Batman Begins          2005           PG-13  Christopher Nolan
-- The Dark Knight        2008           PG-13  Christopher Nolan
-- The Dark Knight Rises  2012           PG-13  Christopher Nolan

-- Top Cast
-- ========

-- Batman Begins          Christian Bale        Bruce Wayne
-- Batman Begins          Michael Caine         Alfred
-- Batman Begins          Liam Neeson           Ra's Al Ghul
-- Batman Begins          Katie Holmes          Rachel Dawes
-- Batman Begins          Gary Oldman           Commissioner Gordon
-- The Dark Knight        Christian Bale        Bruce Wayne
-- The Dark Knight        Heath Ledger          Joker
-- The Dark Knight        Aaron Eckhart         Harvey Dent
-- The Dark Knight        Michael Caine         Alfred
-- The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
-- The Dark Knight Rises  Christian Bale        Bruce Wayne
-- The Dark Knight Rises  Gary Oldman           Commissioner Gordon
-- The Dark Knight Rises  Tom Hardy             Bane
-- The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
-- The Dark Knight Rises  Anne Hathaway         Selina Kyle

-- Turns column mode on but headers off
.mode column
.headers off

-- Drop existing tables, so you'll start fresh each time this script is run.
-- TODO!

-- Create new tables, according to your domain model
-- TODO!

-- Insert data into your database that reflects the sample data shown above
-- Use hard-coded foreign key IDs when necessary
-- TODO!

-- Prints a header for the movies output
.print "Movies"
.print "======"
.print ""

-- The SQL statement for the movies output
-- TODO!

-- Prints a header for the cast output
.print ""
.print "Top Cast"
.print "========"
.print ""


-- The SQL statement for the cast output
-- TODO!


DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS characters;
DROP TABLE IF EXISTS top_cast;

CREATE TABLE movies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT,
  year_released INTEGER,
  mpaa_rating TEXT,
  director TEXT
);

CREATE TABLE characters (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  movie_id INTEGER
);

CREATE TABLE top_cast (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  character_id INTEGER
);

insert into movies (title, year_released, mpaa_rating, director)
values
    ('Batman Begins', '2005', 'PG-13', 'Christopher Nolan'),
    ('The Dark Knight', '2008', 'PG-13', 'Christopher Nolan'),
    ('The Dark Knight Rises', '2012', 'PG-13', 'Christopher Nolan');

insert into characters (first_name, last_name, movie_id)
values
    ('Bruce', 'Wayne', '1'),
    ('Alfred', '', '1'),
    ('Ras A', 'Ghul', '1'),
    ('Rachel', 'Dawes', '1'),
    ('Commissioner', 'Gordon', '1'),
    ('Bruce', 'Wayne', '2'),
    ('Joker', '', '2'),
    ('Harvey', 'Dent', '2'),
    ('Alfred', '', '2'),
    ('Rachel', 'Dawes', '2'),
    ('Bruce', 'Wayne', '3'),
    ('Commissioner', 'Gordon', '3'),
    ('Bane', '', '3'),
    ('John', 'Blake', '3'),
    ('Selina', 'Kyle', '3'); 

insert into top_cast (first_name, last_name, character_id)
values
    ('Christian Bale', 'Wayne', '1'),
    ('Michael', 'Caine', '1'),
    ('Liam', 'Neeson', '1'),
    ('Katie', 'Holmes', '1'),
    ('Gary', 'Oldman', '1'),
    ('Christian', 'Bale', '2'),
    ('Heath', 'Ledger', '2'),
    ('Aaron', 'Eckhart', '2'),
    ('Michael', 'Caine', '2'),
    ('Maggie', 'Gyllenhaal', '2'),
    ('Christian', 'Bale', '3'),
    ('Gary', 'Oldman', '3'),
    ('Tom', 'Hardy', '3'),
    ('Joseph', 'Gordon-Levitt', '3'),
    ('Anne', 'Hathaway', '3'); 

    