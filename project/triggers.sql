--1. Enforce an integrity constraint: before the insertion of 
-- of a review tuple, check if the submit time of the movie review
-- is before the release date of the movie. If the submit time is 
-- before the release date, throw out an error and stop the insertion;
-- else we allow the insertion.
DROP TRIGGER IF EXISTS check_review_insert ON reviews;
CREATE TRIGGER check_review_insert
	BEFORE INSERT ON reviews
	FOR EACH ROW
	EXECUTE PROCEDURE check_subtime_insert();




--2. Keep track of changes to the country attribute of the table movie_professional 
-- in the log table log_prf_country. After an update on the country (nationality) of 
-- a movie professional, the trigger will be activated: if the country value changes,
-- we'll log the changes in the table log_prf_country; if not, we'll do nothing.
DROP TRIGGER IF EXISTS track_pcountry ON movie_professional;
CREATE TRIGGER track_pcountry
	AFTER UPDATE of country ON movie_professional
	FOR EACH ROW
	EXECUTE PROCEDURE log_pcountry_state();




--3. After an insertion of new movie int to table movie,
-- the trigger will automatically set the movie genre as 'Pending'
-- to maintain the full participation of movie in the relationship
-- belongs_to before we indeed give the new movie a genre later
DROP TRIGGER IF EXISTS set_movie_genre ON movie;
CREATE TRIGGER set_movie_genre
	AFTER INSERT ON movie
	FOR EACH ROW
	EXECUTE PROCEDURE set_movie_genre();
