-- 1.The procedure checks if the submit time of the movie review to be inserted
-- is before the release date of the corresponding movie. If the submit time is 
-- before the release date, throw out an error and stop the insertion;
-- else we allow the insertion.
CREATE OR REPLACE FUNCTION check_subtime_insert()
	RETURNS TRIGGER
	LANGUAGE plpgsql
	AS
$$
BEGIN
	IF NEW.submit_time::date < (SELECT release_date FROM movie WHERE movie.movie_id = NEW.movie_id)::date THEN
		RAISE EXCEPTION 'INCORRECT REVIEW DATE VALUE %', NEW.submit_time 
					USING hint = 'Review date earlier than movie release date';
	END IF;
	RETURN NEW;
END;
$$;

-- 2.The procedure helps keep track of changes to the country attribute of the table 
-- movie_professional in the log table log_prf_country. After an update on the 
-- country (nationality) of a movie professional, if the country value changes,
-- we'll log the changes in the table log_prf_country; if not, we'll do nothing.
CREATE OR REPLACE FUNCTION log_pcountry_state()
	RETURNS TRIGGER
	LANGUAGE plpgsql
	AS
$$
BEGIN
	IF NEW.country <> OLD.country THEN
		INSERT INTO log_prf_country(professional_id, log_time, old_value, new_value)
		VALUES(OLD.professional_id, current_timestamp, OLD.country, NEW.country);
	END IF;
	RETURN NEW;
END;
$$;


-- 3.The procedure will insert a new genre 'Pending' into the table
-- genre if the genre 'Pending' doesn't exist; Also, if the movie to
-- be inserted hasn't been given a genre, the procudure will set its
-- genre_id to be 0 correspong to the genre 'Pending'.
CREATE OR REPLACE FUNCTION set_movie_genre()
	RETURNS TRIGGER
	LANGUAGE plpgsql
	AS
$$
BEGIN
	IF 0 NOT IN (SELECT genre_id FROM genre) THEN
		INSERT INTO genre(genre_id, name)
		VALUES (0, 'Pending');
	END IF;
	IF NEW.movie_id NOT IN (SELECT movie_id FROM belongs_to) THEN
		INSERT INTO belongs_to(movie_id, genre_id)
		VALUES (NEW.movie_id, 0);
	END IF;
	RETURN NEW;
END;
$$;


-- 4.The procedure is to find the best 3 movies (with highest average rating scores)
-- of a given genre.
-- Input: genre_name varchar(200)
-- Output: a table containing the titles and average rating scores of the 
-- best 10 movies (if there is not 3 movies, list as many as possible) 
CREATE OR REPLACE FUNCTION findBest3Movies(
	genre_name varchar(200)
) 
		RETURNS TABLE (
			film_title varchar(200),
			avg_rating real
			)
			LANGUAGE plpgsql
AS 
$$
BEGIN
		RETURN QUERY
				SELECT
					title,
					avg(score)::real
				FROM
					(SELECT * FROM genre
						NATURAL JOIN belongs_to
						NATURAL JOIN movie 
						NATURAL JOIN reviews 
						WHERE name = genre_name) AS r1
				GROUP BY movie_id, title
				ORDER BY avg(score) DESC LIMIT 3;
END;
$$;

