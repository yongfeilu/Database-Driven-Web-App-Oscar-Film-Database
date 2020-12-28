-- 1. For Trigger check_review_insert

-- 1.1 Insertion of a review that activates the trigger check_review_insert
-- Expected outcome: since the review for the movie with movie_id = 1 
-- is submitted before the movie's release date, this will activate the 
-- trigger, an error will be throwed out and the insertion will be invalid
INSERT INTO
    reviews (user_id, movie_id, rev_text, submit_time, score)
VALUES
    (19, 1, 'Knowledge often appear old. Term leg since. Between bag result.
Goal short tough common power cut. We best south today.', '2000-10-10', 8);

-- As expected, the review with movie_id = 1 and user_id = 19 doesn't not exist.
SELECT * FROM reviews WHERE movie_id = 1 AND user_id = 19;


-- 1.2 Insertion of a review that does not activate the trigger check_review_insert
-- because the review submit date is after the release date of the movie
-- Firstly, to ensure the replicability of the query, delete the review tuple to be
-- inserted if it exists in the table
INSERT INTO
    reviews (user_id, movie_id, rev_text, submit_time, score)
VALUES
    (18, 1, 'Authority cold evidence party. Expert management road in. Set although about never.', '2019-10-13', 9);

-- As expected, the review with user_id = 18 and movie_id = 1 will appear the reviews table. 
SELECT * FROM reviews WHERE movie_id = 1 AND user_id = 18;



-- 2. For Trigger track_pcountry

-- 2.1 Update the country of movie professional with professional_id = 1
-- But this modification does not activate the trigger track_pcountry
-- because the country is still 'United States'
UPDATE movie_professional
SET country = 'United States'
WHERE professional_id = 1;
-- As expected, there is no log at present
SELECT * FROM log_prf_country WHERE professional_id = 1;


-- 2.2 Update operation that activates the trigger track_pcountry
-- because the country for professional with professional_id = 1
-- changes from 'United States' to 'Canada'
UPDATE movie_professional
SET country = 'Canada'
WHERE professional_id = 1;

-- As expected, there is a log to track the country changes for 
-- movie professional with professional_id = 1
SELECT * FROM log_prf_country WHERE professional_id = 1;


-- 3. For Trigger set_movie_genre

-- 3.1 Insertion of a new movie into table movie that activates the trigger
-- set_movie_genre
-- To ensure the replicability of the effects, we must ensure the tuple
-- to be inserted does not exit in the movie table yet, so we delete it 
-- at the very beginning

INSERT INTO 
    movie (title, release_date, length, language, budget, box_office)
VALUES
    ('Birdman', '2014-08-27', '01:59' , 'English', 18000000, 103200000);

-- As expected, the genre_id for the newly inserted movie is 0 and genre.name is 'Peding'
SELECT * FROM movie NATURAL JOIN belongs_to NATURAL JOIN genre WHERE title = 'Birdman';

-- 3.2 An update modification that does not activate the trigger set_movie_genre since we haven't
-- inserted new movies.
UPDATE movie
SET budget = 20000000
WHERE movie_id = 1;

-- As expected, the movie with movie_id still belongs to its original genres rather than
-- a 'Peding' for its genre.
SELECT * FROM belongs_to NATURAL JOIN genre WHERE movie_id = 1;

