
-- 1. List the average length of movies of different genres 
-- in an AScending order bythe average length, along with the genre
SELECT name, avg(length)
FROM movie INNER JOIN belongs_to ON movie.id = belongs_to.movie_id
INNER JOIN genre ON belongs_to.genre_id = genre.id
GROUP BY name ORDER BY avg(length);

-- 2. Among the different awards, list the movie that has won the award and earned the
-- highest profit (defined as box_office - budget), along with the award name and profit
-- in an descending order by the profit
SELECT r1.name AS award_name, r1.title AS film, r1.profit
FROM (SELECT *, (box_office - budget) AS profit FROM movie
INNER JOIN movie_award ON movie.id = movie_award.movie_id
INNER JOIN award ON movie_award.award_id = award.id) AS r1
INNER JOIN 
(SELECT award.name, max(box_office - budget) AS max_profit 
FROM movie INNER JOIN movie_award ON movie.id = movie_award.movie_id
INNER JOIN award ON movie_award.award_id = award.id
GROUP BY award.name) AS r2
ON r1.name = r2.name and r1.profit = r2.max_profit
ORDER BY r1.profit DESC;

--3. List the number of awards won by movies belonging to each genre
-- in an descending order, alONg with the genre name
SELECT genre.name AS genre_name, count(*) AS cnt FROM genre
INNER JOIN belongs_to ON genre.id = belongs_to.genre_id
INNER JOIN movie ON belongs_to.movie_id = movie.id
INNER JOIN movie_award ON movie.id = movie_award.movie_id
GROUP BY genre.name
ORDER BY cnt DESC;

--4. List the average rating scores of the movies rent by users and of the movies bought by users
SELECT pur_type, avg(score) FROM purchases
INNER JOIN movie ON purchases.movie_id = movie.id
INNER JOIN reviews ON movie.id = reviews.movie_id
GROUP BY pur_type;




