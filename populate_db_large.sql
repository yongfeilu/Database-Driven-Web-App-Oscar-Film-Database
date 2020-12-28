
--copy data from movie_prof.csv to table movie_professional (10000 tuples)
\COPY movie_professional(name, gender, date_birth, country, occupation) FROM 'movie_prof.csv' DELIMITER ',' CSV HEADER;

--copy data from movie.csv to table movie (10000 tuples)
\COPY movie(title, release_date, length, language, budget, box_office) FROM 'movie.csv' DELIMITER ',' CSV HEADER;



--insert tuples to table genre
INSERT INTO 
    genre (name)
VALUES
    ('Biography'), ('Comedy'), ('Drama'), ('Romance'), ('Crime'), ('Animation'), ('Action'),
    ('Adventure'), ('Documentary'), ('Sport'), ('Short'), ('Family'), ('Sci-Fi') , ('Music'),
    ('History'), ('Thriller'), ('War'), ('News');

--insert tuples to table award
INSERT INTO 
    award (name)
VALUES
    ('Best Original Song'), ('Best Picture'), ('Best Director'), 
    ('Best Actor'), ('Best Actress'), ('Best Supporting Actor'), 
    ('Best Supporting Actress'), ('Best Original Screenplay'), 
    ('Best Adapted Screenplay'), ('Best Animated Feature Film'),
    ('Best Foreign Language Film'), ('Best Documentary Feature'),
    ('Best Documentary Short Subject'), ('Best Live Action Short Film'),
    ('Best Animated Short Film'), ('Best Original Score'),
    ('Best Sound Editing'), ('Best Sound Mixing'),
    ('Best Production Design'), ('Best Cinematography'),
    ('Best Makeup and Hairstyling'), ('Best Costume Design'),
    ('Best Film Editing'), ('Best Visual Effects'),
    ('Best International Feature Film');

--insert tuples to table song
INSERT INTO 
    song (name, length, singer, award_id)
VALUES
    ('Shallow', '03:37', ARRAY['Lady Gaga', 'Bradley Cooper'], 1),
    ('(Im Gonna) Love Me Again', '04:12', ARRAY['Elton John ', 'Taron Egerton'], 1),
    ('Remember Me', '01:49', ARRAY['Natalia Lafourcade', 'Miguel', 'Benjamin Bratt', 'Gael García Bernal', 'Anthony Gonzalez', 'Ana Ofelia Murguía'], 1),
    ('City of Stars', '02:25',  ARRAY['Ryan Gosling', 'Emma Stone'], 1),
    ('Writings on the Wall', '04:38', ARRAY['Sam Smith'], 1),
    ('Glory', '04:32', ARRAY['John Legend', 'Common'], 1),
    ('Let It Go', '03:45', ARRAY['Idina Menzel'], 1),
    ('Skyfall', '04:46', ARRAY['Adele'], 1),
    ('Man or Muppet', '02:58', ARRAY['Jason Segel', 'Walter (Peter Linz)'], 1),
    ('We Belong Together', '4:03', ARRAY['Randy Newman'], 1),
    ('The Weary Kind', '04:18', ARRAY['Ryan Bingham'], 1),
    ('Jai Ho', '05:19', ARRAY['A. R. Rahman '], 1),
    ('Falling Slowly', '04:50', ARRAY['Glen Hansard', 'Markéta Irglová'], 1),
    ('I Need to Wake Up', '03:35', ARRAY['Melissa Etheridge'], 1),
    ('Its Hard out Here for a Pimp', '03:03', ARRAY['Three 6 Mafia'], 1),
    ('Al otro lado del río', '03:13', ARRAY['Jorge Drexler'], 1),
    ('Into the West', '04:35', ARRAY['Annie Lennox'], 1),
    ('Lose Yourself', '05:20', ARRAY['Eminem'], 1),
    ('If I Didnt Have You', '03:41', ARRAY['John Goodman', 'Billy Crystal'], 1),
    ('Things Have Changed', '3:37', ARRAY['Bob Dylan'], 1);

--copy data from users.csv to table db_user (10000 tuples)
\COPY db_user(name, gender, email) FROM 'users.csv' DELIMITER ',' CSV HEADER;

--insert tuples to watchlist table
INSERT INTO 
    watchlist (name, description, user_id)
VALUES
    ('air', 'Else consider arrive candidate cover thing as.', 16),
    ('sister', 'Magazine assume road adult south story.', 10),
    ('on', 'This west much hard else threat movement.', 14),
    ('may', 'Right interest present option small soon door.', 4),
    ('everybody', 'Trip pick letter amount live forget party.', 2),
    ('science', 'Dream note court wide language how network.', 13),
    ('open', 'Later about plan.', 18),
    ('talk', 'If set social create.', 5),
    ('four', 'With bad magazine item gun within.', 4),
    ('house', 'Energy shake rich wife day research.', 11),
    ('design', 'Process score study room.', 4),
    ('someone', 'Store lay blood stay.', 9),
    ('stop', 'Easy stop suffer thank last put.', 3),
    ('weight', 'Personal have operation visit amount fear.', 4),
    ('over', 'Three building most necessary man.', 15),
    ('specific', 'Thing also property.', 3),
    ('ok', 'Institution soon call stuff owner stock skill.', 14),
    ('both', 'Force public street crime.', 16),
    ('Democrat', 'Sister tell mean pretty him.', 5),
    ('up', 'Trial tree mouth lawyer his case.', 17);

--copy data from works_in.csv to table works_in (10000 tuples)
\COPY works_in(professional_id, movie_id) FROM 'works_in.csv' DELIMITER ',' CSV HEADER;

--belongs_to
\COPY belongs_to(genre_id, movie_id) FROM 'belongs_to.csv' DELIMITER ',' CSV HEADER;

--insert tuples to uses table
INSERT INTO
    uses (movie_id, song_id)
VALUES
    (15, 1), (25, 2), (26, 3), (27, 4), (28, 5), (29, 6), (30, 7), (31, 8), (32, 9),
    (33, 10), (34, 11), (35, 12), (36, 13), (37, 14), (38, 15), (39, 16), (40, 17),
    (41, 18), (42,19), (43, 20);


--copy data from professional_award.csv to table prof_award (10000 tuples)
\COPY prof_award(award_id, professional_id, year) FROM 'professional_award.csv' DELIMITER ',' CSV HEADER;

--copy data from movie_award.csv to table movie_award (10000 tuples)
\COPY movie_award(movie_id, award_id, year) FROM 'movie_award.csv' DELIMITER ',' CSV HEADER;

--insert tuples to table follows
INSERT INTO 
    follows (user_id, list_id)
VALUES
    (2, 8), (13, 13), (3, 13), (10, 8), (7, 7), (7, 13), (20, 5), (13, 11), (15, 4),
    (7, 11), (5, 17), (8, 20), (17, 16), (8, 18), (4, 19), (3, 2), (2, 2), (13, 16),
    (5, 8), (3, 4);

--copy data from review.csv to table review (50000 tuples)
\COPY reviews(user_id, movie_id, rev_text, submit_time, score) FROM 'review.csv' DELIMITER ',' CSV HEADER;

--insert tuples to table movie_in_list
INSERT INTO
    movie_in_list (movie_id, list_id)
VALUES
    (14, 16), (1, 3), (7, 3),(11, 17), (20, 13),(16, 7), (5, 20), (1, 17),
    (1, 9), (7, 5), (20, 19), (5, 14), (20, 11), (14, 20), (8, 20), (3, 15),
    (18, 3), (4, 2), (4, 20), (18, 10);

--insert tuples to table purchases
INSERT INTO
    purchases (movie_id, user_id, pur_date, amount, pur_type)
VALUES
    (11, 3, '2020-09-13', 28, 'buy'), (7, 11, '2020-09-08', 6, 'rent'),
    (16, 12, '2020-09-02', 7, 'rent'), (5, 15, '2020-10-14', 23, 'buy'),
    (14, 14, '2020-10-10', 8, 'rent'), (18, 4, '2020-10-07', 19, 'buy'),
    (19, 13, '2020-09-12', 23, 'buy'), (2, 11, '2020-10-14', 8, 'rent'),
    (13, 14, '2020-10-16', 22, 'buy'), (10, 12, '2020-10-02', 13, 'rent'),
    (1, 7, '2020-09-30', 11, 'rent'), (4, 20, '2020-09-04', 15, 'buy'),
    (7, 10, '2020-09-21', 5, 'rent'), (2, 8, '2020-09-08', 13, 'rent'),
    (8, 16, '2020-09-29', 18, 'buy'), (18, 15, '2020-09-06', 24, 'buy'),
    (10, 20, '2020-09-15', 5, 'rent'), (10, 5, '2020-09-19', 20, 'buy'),
    (5, 11, '2020-10-19', 9, 'rent'), (3, 11, '2020-09-02', 18, 'buy');











