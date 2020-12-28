--1. Add a new column release_year to the table movie_cp
ALTER TABLE movie_cp ADD release_year text;

--2. Change the type of release_year from text to smallint
ALTER TABLE movie_cp
ALTER COLUMN release_year type smallint
USING release_year::smallint;

--3. Drop the column release_year from the table movie_cp
ALTER TABLE movie_cp DROP release_year;