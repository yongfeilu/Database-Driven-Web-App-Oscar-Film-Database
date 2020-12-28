--1. list all genres along with the corresponding total number of American actors who have performed in the movies of that genre.
-- For this query, I create the composite index occup_con on the attributes occupation, country of the table movie_professional
-- to speed up the query. This can make filtering the American actors from the movie_professional table more quickly.
-- PleASe see index6.sql for index creation commAND.

DROP INDEX IF EXISTS occup_con;
CREATE INDEX occup_con ON movie_professional(occupation, country);

SELECT genre.name AS movie_genre, count(*) AS num_actors FROM 
(SELECT * FROM movie_professional WHERE occupation = 'actor' AND country='United States') AS r1
INNER JOIN works_in ON r1.professional_id = works_in.professional_id
INNER JOIN movie ON works_in.movie_id = movie.movie_id
INNER JOIN belongs_to ON movie.movie_id = belongs_to.movie_id
INNER JOIN genre ON belongs_to.genre_id = genre.genre_id
GROUP BY genre.genre_id, genre.name
ORDER BY count(*) DESC;


--2. List the 5 most popular directors who direct English movies. Popularity is defined as
-- the average rating score of the movies for the director.  

SELECT r1.name AS director_name, avg(score) AS avg_rating FROM
(SELECT * FROM movie_professional WHERE occupation = 'director') AS r1
NATURAL JOIN works_in NATURAL JOIN (SELECT * FROM movie WHERE language = 'English') AS r2
NATURAL JOIN reviews
GROUP BY r1.professional_id, r1.name
ORDER BY avg(score) DESC LIMIT 5;


--3. Among all movies that win a type of Oscar award, list the movie that has made the highest profits (AS box_office - budget).
-- Final result should include the award name, movie name, profit and average rating score for that movie.

SELECT award_name, film, profit, avg_rating FROM (SELECT * FROM 
(SELECT movie.movie_id, movie.title AS film, (movie.box_office - movie.budget) AS profit, r0.avg_rating FROM movie 
LEFT OUTER JOIN (SELECT movie.movie_id, movie.title AS film, avg(reviews.score) AS avg_rating FROM
movie NATURAL JOIN reviews
GROUP BY movie.movie_id, movie.title) AS r0
ON movie.movie_id = r0.movie_id) AS r1
NATURAL JOIN movie_award NATURAL JOIN
(SELECT award_id, award.name AS award_name, max(box_office - budget) AS max_profit FROM award 
NATURAL JOIN movie_award NATURAL JOIN movie
GROUP BY award_id, award.name) AS r2) AS t
WHERE profit = max_profit;



--4. Find the user(s) who has/have left the largest number of comments, then list the user_id(s)
-- along with the non-English movie(s) with a budget of over 10000000 dollars that the user(s) 
-- has/have give the highest rating score (we assume that one user only comment on one movie at most once).
-- The final result should include user_id, movie name, language of the movie, movie budget AND rating score.

-- Here, I create the composite index lan_bgt on the attributes (language, budget) of the table movie.
-- This can speed up the query by making filtering the non-English movies with a over 10000000 budget
-- FROM movie table more quickly.
-- Please see index6.sql for index creation commAND.

-- 4.1 To simplify the query, I first create a temporary table movie_list which includes
-- the user_id of the users having left the largest number of reviews, AND the non-English 
-- movies with a budget of over 1000000 dollars that the user(s) hAS commented on. 

DROP INDEX IF EXISTS lan_bgt;
CREATE INDEX lan_bgt ON movie(language, budget);

DROP TABLE IF EXISTS movie_list;
CREATE TEMPORARY TABLE movie_list AS
SELECT r2.user_id, r0.title AS film, r0.language, r0.budget, reviews.score FROM 
(SELECT * FROM movie WHERE language != 'English' AND budget > 10000000) AS r0
NATURAL JOIN reviews
NATURAL JOIN (SELECT user_id, num_rv FROM
(SELECT db_user.user_id, count(*)  AS num_rv FROM db_user NATURAL JOIN reviews
GROUP BY db_user.user_id) AS r1
WHERE num_rv = (SELECT count(*) FROM db_user NATURAL JOIN reviews
GROUP BY db_user.user_id ORDER BY count(*) DESC LIMIT 1)) AS r2
ORDER BY reviews.score DESC;

-- 4.2 List the final result
SELECT * FROM movie_list WHERE score = (SELECT score FROM movie_list LIMIT 1);




