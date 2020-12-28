-- Create a view that contains the movies and their corresponding genres
-- function: the view simplifies querying so that we no longer need to write the long join query again
-- to fetch the information next time; moreover, when the underlying tables get updated, the view content
-- will also get updated
DROP VIEW IF EXISTS movie_genre;
CREATE VIEW movie_genre AS 
(SELECT movie.id as movie_id, movie.title as film_name, genre.name AS genre_name FROM movie 
INNER JOIN belongs_to ON movie.id = belongs_to.movie_id
INNER JOIN genre ON belongs_to.genre_id = genre.id);

-- Create a view the contains the movies that are purchased by our users and whether they rent or bought by the users
-- function: the view can protect sensitive data (users' consumption history) from being accessed
-- by unwanted people
DROP VIEW IF EXISTS purchased_movie;
CREATE VIEW purchased_movie AS
(SELECT movie.id AS movie_id, movie.title AS film_name, pur_type FROM
purchases INNER JOIN movie ON purchases.movie_id = movie.id);

-- Create a view that contains the movies and the awards they've won
-- function: the view simplifies querying so that we no longer need to write the long join query again
-- to fetch the information next time; moreover, when the underlying tables get updated, the view content
-- will also get updated
DROP VIEW IF EXISTS awarded_movie;
CREATE VIEW awarded_movie AS 
(SELECT movie.id AS movie_id, movie.title as film_name, award.name AS award_name, release_date, length, language, budget, box_office 
FROM movie INNER JOIN movie_award ON movie.id = movie_award.movie_id
INNER JOIN award ON movie_award.award_id = award.id);

-- Create a view that contains the movies and their corresponding rating scores
-- function: the view simplifies querying so that we no longer need to write the long join query again
-- to fetch the information next time; moreover, when the underlying tables get updated, the view content
-- will also get updated
DROP VIEW IF EXISTS reviewed_movie;
CREATE VIEW reviewed_movie AS 
(SELECT  movie.id as movie_id, movie.title as film_name, score as rating
FROM movie INNER JOIN reviews ON movie.id = reviews.movie_id);

