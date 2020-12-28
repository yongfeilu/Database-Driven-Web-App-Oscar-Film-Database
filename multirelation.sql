-- 1. Find the names of the Oscar winning movies released in 2018 whose genre is action.
SELECT DISTINCT movie.title
FROM genre INNER JOIN belongs_to ON genre.id = belongs_to.genre_id
INNER JOIN movie ON belongs_to.movie_id = movie.id
INNER JOIN movie_award ON movie.id = movie_award.movie_id
WHERE extract(year FROM release_date) = 2018 AND genre.name = 'Action';


-- 2. Find the genres of the movies which use the song led by Lady Gaga
SELECT genre.name FROM belongs_to INNER JOIN genre ON belongs_to.genre_id = genre.id
WHERE belongs_to.movie_id = 
(SELECT movie_id FROM uses WHERE song_id = (SELECT id FROM song WHERE 'Lady Gaga' = any(singer)));


-- 3. List the rating scores of the movies performed by the actors in our database 
-- (in an ascending orde by the review score).
-- If the movies performed by some actors haven't received any reviews, we leave the
-- rating score as null.
SELECT r1.name, r1.gender, movie.title AS movie_name, reviews.score FROM
(SELECT * FROM movie_professional WHERE occupation = 'actor') AS r1
LEFT OUTER JOIN works_in ON r1.id = works_in.professional_id
LEFT OUTER JOIN movie ON works_in.movie_id = movie.id
LEFT OUTER JOIN reviews ON movie.id = reviews.movie_id
ORDER BY reviews.score;

-- 4. Find the moive with the highest box office among those movies 
-- which use the songs that win the Best Original Song Award
-- (all songs in the song table win the award).
SELECT title AS movie_name, song.name AS song_name, box_office
FROM movie INNER JOIN uses ON movie.id = uses.movie_id
INNER JOIN song ON uses.song_id = song.id
ORDER BY box_office DESC LIMIT 1;


-- 5. List the awards won by the movies whose diretors are not Americans,
-- along with the movie name, director, and country
SELECT r1.name AS director, r1.country, movie.title AS film, award.name AS award_name FROM
(SELECT * FROM movie_professional WHERE occupation = 'director' AND country != 'United States') AS r1
INNER JOIN works_in ON r1.id = works_in.professional_id
INNER JOIN movie ON works_in.movie_id = movie.id
INNER JOIN movie_award ON movie.id = movie_award.movie_id
INNER JOIN award ON movie_award.award_id = award.id;






