--1. Create the composite index occup_con on the attributes occupation, country of the table movie_professional
-- to speed up query 1 in query6.sql. This can make filtering the American actors from the movie_professional table more quickly.
DROP INDEX IF EXISTS occup_con;
CREATE INDEX occup_con ON movie_professional(occupation, country);
--2. Create the composite index lan_bgt on the attributes (language, budget) of the table movie.
-- This can speed up query 4 in query6.sql by making filtering the non-English movies with a over 
-- 10000000 budget from movie table more quickly.

DROP INDEX IF EXISTS lan_bgt;
CREATE INDEX lan_bgt ON movie(language, budget);