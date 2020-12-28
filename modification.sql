
--1. Insert a tuple into the table movie_professional_cp
INSERT INTO 
    movie_professional_cp (id, name, gender, date_birth, country, occupation)
VALUES
    (1, 'Jaime Ray Newman', 'female', '1978-04-02', 'United States', 'actor');

--2. Insert some tuples into the table movie_professional_cp
-- by selecting the tuples whose occupation is actor and id is not 1
-- from another table movie_professional
INSERT INTO movie_professional_cp
	SELECT *
	FROM movie_professional WHERE occupation = 'actor' and id != 1;

--3. Update the values of the column occupation of the table movie_professional_cp.
-- Change the occupation of female actresses from 'actor' to 'actress'
UPDATE movie_professional_cp
SET occupation = 'actress'
WHERE occupation = 'actor' AND gender = 'female';

--4. Delete the tuples from the table movie_professional_cp whose country is not
-- United States
DELETE FROM movie_professional_cp
WHERE country != 'United States';




--5. Insert a tuple into the table movie_cp
INSERT INTO 
    movie_cp (id, title, release_date, length, language, budget, box_office)
VALUES
    (1, 'The Shape of Water', '2017-08-31', '02:03', 'English', 20000000, 195300000);

--6. Insert some tuples into the table movie_cp
-- by selecting the tuples whose language is English and id is not 1
-- from another table movie
INSERT INTO movie_cp
SELECT * FROM movie WHERE language = 'English' and id != 1;

--7. Update the values of the column budget of the table movie_cp.
-- Change the budget of movies whose budget value is null from null to
-- the average budget value of all English movies in the table movie
UPDATE movie_cp
SET budget = (SELECT avg(budget) FROM movie WHERE language = 'English'),
    box_office = (SELECT avg(box_office) FROM movie WHERE language = 'English')
WHERE budget is null and box_office is null;

--8. Delete the tuples whose budget is 70880882 from the table movie_cp
DELETE FROM movie_cp
WHERE budget = 70880882;



