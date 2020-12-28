DROP TYPE IF EXISTS gender_type CASCADE;
CREATE TYPE gender_type AS ENUM ('male', 'female', 'other');


DROP TABLE IF EXISTS movie_professional CASCADE;
CREATE TABLE movie_professional (
	professional_id 	serial PRIMARY KEY,
	name 				varchar(50) NOT NULL,
	gender				gender_type,
	date_birth  		date check(date_birth > '1850-01-01'),
	country				varchar(150),
	occupation			varchar(50)
);

-- created for previous project 
DROP TABLE IF EXISTS movie_professional_cp CASCADE;
CREATE TABLE movie_professional_cp (
	professional_id			serial PRIMARY KEY,
	name 					varchar(50) NOT NULL,
	gender					gender_type,
	date_birth  			date check(date_birth > '1850-01-01'),
	country					varchar(50),
	occupation				varchar(50)
);


DROP TABLE IF EXISTS movie CASCADE;
CREATE TABLE movie (
	movie_id 		serial PRIMARY KEY,
	title 			varchar(100) NOT NULL,
	release_date	date,
	length 			interval hour to minute,
	language		varchar(50),
	budget			bigint,
	box_office		bigint
);



-- created for previous project 
DROP TABLE IF EXISTS movie_cp CASCADE;
CREATE TABLE movie_cp (
	movie_id 		serial PRIMARY KEY,
	title 			varchar(100) NOT NULL,
	release_date	date,
	length 			interval hour to minute,
	language		varchar(50),
	budget			bigint,
	box_office		bigint
);


DROP TABLE IF EXISTS genre CASCADE;
CREATE TABLE genre (
	genre_id 	serial PRIMARY KEY,
	name		varchar(50)	NOT NULL
);


DROP TABLE IF EXISTS award CASCADE;
CREATE TABLE award (
    award_id 	serial PRIMARY KEY,
    name		varchar(100) NOT NULL
);


DROP TABLE IF EXISTS song CASCADE;
CREATE TABLE song (
	song_id  	serial PRIMARY KEY,
	name		varchar(100),
	singer		text[],
	length		interval minute to second,
	award_id 	integer	references award(award_id)
);


DROP TABLE IF EXISTS db_user CASCADE;
CREATE TABLE db_user (
	user_id 	serial PRIMARY KEY,
	name		varchar(100) NOT NULL,
	gender 		gender_type,
	email		varchar(100)
);


DROP TABLE IF EXISTS watchlist CASCADE;
CREATE TABLE watchlist (
	list_id 		serial PRIMARY KEY,
	name			varchar(150) NOT NULL,
	description		varchar(300),
	user_id     	integer,
	FOREIGN KEY(user_id) references db_user(user_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);


DROP TABLE IF EXISTS works_in CASCADE;
CREATE TABLE works_in (
    professional_id integer references movie_professional(professional_id) ON UPDATE CASCADE ON DELETE CASCADE,
    movie_id		integer references movie(movie_id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT prof_movie PRIMARY KEY(professional_id, movie_id)
);



DROP TABLE IF EXISTS belongs_to CASCADE;
CREATE TABLE belongs_to (
	genre_id integer references genre(genre_id),
	movie_id integer references movie(movie_id) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT gen_movie PRIMARY KEY(genre_id, movie_id)
);


DROP TABLE IF EXISTS uses CASCADE;
CREATE TABLE uses (
	song_id 	integer references song(song_id) ON UPDATE CASCADE ON DELETE CASCADE,
	movie_id	integer references movie(movie_id) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT song_movie PRIMARY KEY(song_id, movie_id)
);


DROP TABLE IF EXISTS prof_award CASCADE;
CREATE TABLE prof_award (
	professional_id integer references movie_professional(professional_id) ON UPDATE CASCADE ON DELETE CASCADE,
	award_id		integer references award(award_id) ON UPDATE CASCADE ON DELETE CASCADE,
	year			smallint NOT NULL check(year >= 1929),
	CONSTRAINT prf_award PRIMARY KEY(professional_id, award_id)
);


DROP TABLE IF EXISTS movie_award CASCADE;
CREATE TABLE movie_award (
	movie_id integer references movie(movie_id) ON UPDATE CASCADE ON DELETE CASCADE,
	award_id integer references award(award_id) ON UPDATE CASCADE ON DELETE CASCADE,
	year 	 smallint NOT NULL check(year >= 1929),
	CONSTRAINT mv_award PRIMARY KEY(movie_id, award_id)
);


DROP TABLE IF EXISTS follows CASCADE;
CREATE TABLE follows (
	user_id 	integer references db_user(user_id) ON UPDATE CASCADE ON DELETE CASCADE,
	list_id		integer references watchlist(list_id) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT follow PRIMARY KEY(user_id, list_id)
);


DROP TABLE IF EXISTS reviews CASCADE;
CREATE TABLE reviews (
	user_id 	integer references db_user(user_id) ON UPDATE CASCADE ON DELETE CASCADE,
	movie_id	integer references movie(movie_id) ON UPDATE CASCADE ON DELETE CASCADE,
	rev_text	varchar(500) NOT NULL,
	submit_time	date NOT NULL,
	score		integer NOT NULL,
	CONSTRAINT review PRIMARY KEY(user_id, movie_id)
);


DROP TABLE IF EXISTS movie_in_list CASCADE;
CREATE TABLE movie_in_list (
	movie_id integer references movie(movie_id) ON UPDATE CASCADE ON DELETE CASCADE,
	list_id	 integer references watchlist(list_id) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT inlist PRIMARY KEY(movie_id, list_id)
);


DROP TYPE IF EXISTS purchase_type CASCADE;
CREATE TYPE purchase_type AS ENUM ('buy', 'rent');


DROP TABLE IF EXISTS purchases CASCADE;
CREATE TABLE purchases (
	movie_id integer references movie(movie_id) ON UPDATE CASCADE ON DELETE CASCADE,
	user_id	 integer references db_user(user_id) ON UPDATE CASCADE ON DELETE CASCADE,
	pur_date date NOT NULL,
	amount   integer,
	pur_type purchase_type,
	CONSTRAINT purchase PRIMARY KEY(user_id, movie_id)
);


-- Create a log table to keep track of changes of the nationality of movie professionals
DROP TABLE IF EXISTS log_prf_country;
CREATE TABLE log_prf_country(
	log_id serial primary key,
	professional_id integer,
	log_time timestamp DEFAULT current_timestamp,
	old_value  varchar(150),
	new_value  varchar(150)
);










