-- 1. Find movies whose profit is negative 
select title,  (box_office - budget) as profit from movie where (box_office - budget) < 0;

-- 2. Find top five movies (in descending order) which makes the most profits from the movies whose
-- budget information is available (not null)
select title,  (box_office - budget) as profit from movie where budget is not null 
order by profit desc limit 5;

-- 3. Find the top 3 money-making English movies which are released in August and whose budget
-- information is available
select title, extract(month from release_date) as release_month, (box_office - budget) as profit from movie 
where language = 'English' and budget is not null and extract(month from release_date) = 8
order by profit desc limit 3;

-- 4. Find the average age of the movie professionals.
-- These people are active in their businesses now since the table only contains those movie
-- professionals who engage in excellent movies in 2018 and 2019
select avg((current_date - date_birth)/365) as average_age from movie_professional;

-- 5. Find information about the movie professional whose county is not United States
-- and occupation is actor
select * from  movie_professional where country != 'United States' and occupation = 'actor';



-- 6. Find the information of the users who are male and use gmail accounts
select * from db_user where gender = 'male' and email like '%gmail%';


-- 7. Find the information of Oscar Best Original Songs whose length is greater than 4 minutes
-- and name contains the character 'I'
select * from song where length > '00:04:00' and name like '%I%';

-- 8. Find the ids along with the rating scores of the top five movies which receive the highest rating scores
select movie_id, score from reviews order by score desc limit 5


