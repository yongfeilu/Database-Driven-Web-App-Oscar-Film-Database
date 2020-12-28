-- 1. Modified from multirelation.sql query 1
-- Find the names of the Oscar winning movies released in 2018 whose genre is action.
SELECT DISTINCT movie_genre.film_name
FROM movie_genre JOIN awarded_movie USING(movie_id)
where extract(year FROM release_date) = 2018 and genre_name = 'Action';

-- 2. List each movie genre, and the corresponding average rating score of the movies that belongs to
-- the genre. The result is in an ascending order in terms of the average rating scores and
-- should only contain those genres whose average rating scores are above 8.
SELECT genre_name, avg(rating) as avg_rating
FROM movie_genre INNER JOIN reviewed_movie ON movie_genre.movie_id = reviewed_movie.movie_id
GROUP BY genre_name HAVING avg(rating) > 8
ORDER BY avg_rating DESC;

--3. List the average profit (defined by box_office - budget) of the movies 
-- that are rent and bought by our users respectively
SELECT pur_type, avg(box_office - budget) AS avg_profit FROM purchased_movie
INNER JOIN movie ON purchased_movie.movie_id = movie.id
GROUP BY pur_type;


--4. modified from multirelation.sql query 3
-- List the rating scores of the movies performed by the actors in our database 
-- (in an ascending orde by the review score).
-- If the movies performed by some actors haven't received any reviews, we leave the
-- rating score as null.
-- If the same movie and actor are reviewed more than once, we list all the tuples (no group by)
DROP TABLE IF EXISTS actors;
CREATE TEMPORARY TABLE actors AS
SELECT * FROM movie_professional where occupation = 'actor';

SELECT actors.name AS actor_name, movie.title AS film_name, score AS rating FROM actors 
LEFT OUTER JOIN works_in ON actors.id = works_in.professional_id
LEFT OUTER JOIN movie ON works_in.movie_id = movie.id
LEFT OUTER JOIN reviews ON movie.id = reviews.movie_id
ORDER BY rating;

--5. Among the movies that win Oscar awards and get reviewed by our users, list each award name and 
-- the average rating score of the movies that has won the award in a descending order in terms of
-- the average rating score.
SELECT award_name, avg(rating) as avg_rating FROM awarded_movie 
JOIN reviewed_movie USING(movie_id)
GROUP BY award_name ORDER BY avg_rating DESC;


--6. modified from multirelation.sql query 5
-- List the awards won by the movies whose diretors are not Americans,
-- along with the movie name, director, and country
DROP TABLE IF EXISTS foreign_directors;
CREATE TEMPORARY TABLE foreign_directors AS
SELECT * FROM movie_professional where occupation = 'director' AND country != 'United States';

SELECT name as director, country, film_name, award_name FROM foreign_directors 
INNER JOIN works_in ON foreign_directors.id = works_in.professional_id
INNER JOIN awarded_movie ON works_in.movie_id = awarded_movie.movie_id;

