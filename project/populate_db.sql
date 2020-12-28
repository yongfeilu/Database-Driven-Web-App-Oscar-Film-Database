
INSERT INTO 
    movie_professional (name, gender, date_birth, country, occupation)
VALUES
    ('Peter Farrelly', 'male', '1956-12-17', 'United States', 'director'),
    ('Mahershala Ali', 'male', '1974-02-16', 'United States',  'actor'),
    ('Alfonso Cuarón', 'male', '1961-11-28', 'Mexico', 'director'),
    ('Rami Said Malek', 'male', '1981-05-12','United States', 'actor'), 
    ('Olivia Colman', 'female', '1974-01-30', 'England', 'actor'),
    ('Regina King', 'female', '1971-01-15', 'United States', 'actor'),
    ('Paul Massey', 'male', '1958-02-10', 'England', 'sound engineer'), 
    ('Hannah Beachler', 'female', '1970-08-14', 'United States', 'production designer'),
    ('Greg Cannom', 'male', '1951-01-01', 'United States', 'make-up effects artist'),
    ('Ruth E. Carter', 'female', '1960-04-10', 'United States', 'costume designer'), 
    ('John Ottman', 'male', '1964-07-06', 'United States', 'film editor'), 
    ('Paul Lambert', 'male', null, 'England', 'visual effects artist'), 
    ('Ian Hunter', 'male', '1982-01-01', null, ' visual effects artist'), 
    ('Nick Vallelonga', 'male', '1959-09-13', 'United States', 'screenwriter'), 
    ('Bong Joon-ho', 'male', '1969-09-14', 'South Korea', 'director'), 
    ('Joaquin Phoenix', 'male', '1974-10-28', 'United States', 'actor'), 
    ('Renée Zellweger', 'female', '1969-04-25', 'United States', 'actor'), 
    ('Brad Pitt', 'male', '1963-12-18', 'United States', 'actor'), 
    ('Laura Dern', 'female', '1967-02-10', 'United States', 'actor'), 
    ('Han Jin-won', 'male', null, 'South Korea', 'screenwriter'), 
    ('Taika Waititi', 'male', '1975-08-16', 'New Zealand', 'screenwriter'), 
    ('Adam Driver', 'male', '1983-11-19', 'United States', 'actor'), 
    ('Bob Persichetti', 'male', null, 'United States', 'director'), 
    ('Rayka Zehtabchi', 'female', null, 'United States', 'filmmaker'), 
    ('Elizabeth Chai Vasarhelyi', 'female', '1977-01-01', 'United States', 'filmmaker'); 


INSERT INTO 
    movie (title, release_date, length, language, budget, box_office)
VALUES
    ('Green Book', '2018-09-11', '02:10' , 'English', 23000000, 327900000),
    ('Roma', '2018-08-30', '02:15', 'Spanish', 15000000, 5100000),
    ('The Favourite', '2018-08-30', '02:00','English', 15000000, 95900000),
    ('If Beale Street Could Talk', '2018-09-09', '01:57', 'English', 12000000, 20600000),
    ('BlacKkKlansman', '2018-05-14', '02:15', 'English', 15000000, 93400000),
    ('Spider-Man: Into the Spider-Verse', '2018-12-01', '01:57','English', 90000000, 375500000),
    ('Free Solo', '2018-08-31', '01:40', 'English', null , 28600000), 
    ('Period. End of Sentence.', '2018-04-05', '00:25', 'Hindi', null, null), 
    ('Skin', '2018-08-23', '00:20', 'English', null, null), 
    ('Bao', '2018-04-21', '00:08', 'English', null, null), 
    ('Black Panther', '2018-01-29', '02:14', 'English', 200000000, 1347000000), 
    ('Bohemian Rhapsody', '2018-10-23', '02:14', 'English', 52500000, 903700000), 
    ('Vice', '2018-12-11', '02:12', 'English', 60000000, 76100000), 
    ('First Man', '2018-08-29', '02:21', 'English', 70000000, 105700000), 
    ('A Star Is Born', '2018-08-31', '02:16', 'English', 36000000, 436200000), 
    ('Parasite', '2019-05-21', '02:12', 'Korean', 11400000, 264400000), 
    ('Jojo Rabbit', '2019-09-08', '01:48', 'English', 14000000, 90300000), 
    ('Toy Story 4', '2019-06-11', '01:40', 'English', 200000000, 1073000000), 
    ('American Factory', '2019-01-25', '01:50', 'English',null, null), 
    ('The Neighbors Window', '2019-04-26', '00:20', 'English', null, 330661), 
    ('Joker', '2019-08-31', '02:02', 'English', 60000000, 1074000000), 
    ('Judy', '2019-08-30', '01:58', 'English', 10000000, 43700000), 
    ('Once Upon a Time in Hollywood', '2019-05-21', '02:41', 'English', 93000000, 374300000), 
    ('Marriage Story', '2019-08-29', '02:17', 'English', 18000000, 2300000),
    ('Rocketman', '2019-05-16', '02:01', 'English', 40000000, 195200000),
    ('Coco', '2017-10-20', '01:45', 'English', 175000000, 807800000),
    ('La La Land', '2016-08-31', '02:08', 'English', 30000000, 447400000),
    ('Spectre', '2015-10-26', '02:28', 'English', 275000000, 880700000),
    ('Selma', '2014-11-11', '02:08', 'English', 20000000, 66800000),
    ('Frozen', '2013-11-19', '01:42', 'English', 150000000, 1280000000),
    ('Skyfall', '2012-10-23', '02:23', 'English', 175000000, 1109000000),
    ('The Muppets', '2011-11-04', '01:43', 'English', 45000000, 165200000),
    ('Toy Story 3', '2010-06-12', '01:43', 'English', 200000000, 1067000000),
    ('Crazy Heart', '2009-12-06', '01:52', 'English', 7000000, 47400000),
    ('Slumdog Millionaire', '2008-08-30', '02:00', 'English', 15000000, 378100000),
    ('Once', '2008-01-20', '01:26', 'English', 150000, 23300000),
    ('An Inconvenient Truth', '2006-05-24', '01:37', 'English', 1500000, 49800000),
    ('Hustle & Flow', '2005-07-22', '01:56', 'English', 2800000, 23500000),
    ('The Motorcycle Diaries', '2004-01-15', '02:06', 'Spanish', null, 57700000),
    ('The Lord of the Rings: The Return of the King', '2003-12-01', '02:41', 'English', 94000000, 1142000000),
    ('8 Mile', '2002-11-08', '01:50', 'English', 41000000, 242900000),
    ('Monsters, Inc.', '2001-10-08', '01:55', 'English', 115000000, 577400000),
    ('Wonder Boys', '2000-02-25', '01:51', 'English', 55000000, 33400000);


--This is the "code table" containing only 18 tuples
INSERT INTO 
    genre (name)
VALUES
    ('Biography'), ('Comedy'), ('Drama'), ('Romance'), ('Crime'), ('Animation'), ('Action'),
    ('Adventure'), ('Documentary'), ('Sport'), ('Short'), ('Family'), ('Sci-Fi') , ('Music'),
    ('History'), ('Thriller'), ('War'), ('News');


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


INSERT INTO 
    db_user (name, gender, email)
VALUES
    ('Jessica Dunn', 'female', 'rcontreras@meyers.com'),
    ('Jessica Thomas', 'female', 'bridgesamanda@taylor-cardenas.net'),
    ('Courtney Harris', 'female', 'wallaceblake@gmail.com'),
    ('Brenda Austin', 'female', 'xtaylor@jones.com'),
    ('Erin Lee', 'female', 'kristina18@gmail.com'),
    ('Cheryl Jones', 'female', 'moseskristin@yahoo.com'),
    ('Amy Richardson', 'male', 'jane98@gutierrez-webb.com'),
    ('Rebecca Hodge', 'female', 'millermonica@gmail.com'),
    ('Nicole Harris', 'male', 'sabrina27@lopez.com'),
    ('Barbara Coleman', 'male', 'michael40@yahoo.com'),
    ('Connie Dawson', 'female', 'whitetroy@gmail.com'),
    ('Cassandra Cervantes', 'male', 'melissadavis@gmail.com'),
    ('Kelly Lewis', 'male', 'yrichardson@ellis.com'),
    ('Laura Allen', 'male', 'jarcher@gmail.com'),
    ('Lori Dickerson', 'female', 'brianpadilla@jenkins.net'),
    ('Ashley Allen', 'female', 'rebeccacastillo@rogers.com'),
    ('Lynn Duran', 'male', 'shanemedina@carson.org'),
    ('Teresa Stone', 'male', 'wellsmarie@lambert-roberts.biz'),
    ('Angela Sims', 'male', 'qmyers@hotmail.com'),
    ('Taylor Grant', 'male', 'zbradshaw@jones.com');


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


INSERT INTO
    works_in (professional_id, movie_id)
VALUES
    (1, 1), (2, 1), (3, 2), (4, 12), (5, 3), (6, 4), (7, 12), (8, 11), (9, 13),
    (10, 11), (11, 12), (12, 14), (13, 14), (14, 1), (15, 16), (16, 21), (17, 22),
    (18, 23), (19, 24), (20, 16), (21, 17), (22,5), (23, 6), (24, 8), (25, 7);


INSERT INTO
    belongs_to (movie_id, genre_id)
VALUES
    (1, 1), (1, 2), (1, 3), (2, 3), (3, 1), (3, 2), (3, 3), (4, 3), (4, 4),
    (5, 1), (5, 5), (5, 3), (6, 6), (6, 7), (6, 8), (7, 9), (7, 8), (7, 10),
    (8, 11), (9, 11), (9, 3), (10, 11), (10, 6), (10, 12), (11, 7), (11, 8),
    (11, 13), (12, 1), (12, 3), (12, 14), (13, 1), (13, 2), (13, 3), (14, 1),
    (14, 3), (14, 15), (15, 3), (15, 14), (15, 4), (16, 2), (16, 3), (16, 16),
    (17, 2), (17, 3), (17, 17), (18, 6), (18, 8), (18, 2), (19, 9), (20, 11),
    (20, 3), (21, 5), (21, 3), (21, 16), (22, 1), (22, 3), (22, 4), (23, 2),
    (23, 3), (24, 2), (24, 3), (24, 4), (25, 1), (25, 3), (25, 14), (26, 6),
    (26, 8), (26, 12), (27, 2), (27, 3), (27, 14), (28, 7), (28, 8), (28, 16),
    (29, 1), (29, 3), (29, 15), (31, 8), (31, 16), (31, 7), (30, 8), (30, 6),
    (30, 2), (32, 8), (32, 2), (32, 12), (33, 2), (33, 8), (33, 6), (34, 3),
    (34, 14), (34, 4), (35, 3), (35, 4), (36, 3), (36, 14), (36, 4), (37, 18),
    (37, 9), (38, 5), (38, 3), (38, 14), (39, 8), (39, 1), (39, 3), (40, 7),
    (40, 8), (40, 3), (41, 3), (41, 14), (42, 8), (42, 6), (42, 2), (43, 2),
    (43, 3);


INSERT INTO
    uses (movie_id, song_id)
VALUES
    (15, 1), (25, 2), (26, 3), (27, 4), (28, 5), (29, 6), (30, 7), (31, 8), (32, 9),
    (33, 10), (34, 11), (35, 12), (36, 13), (37, 14), (38, 15), (39, 16), (40, 17),
    (41, 18), (42,19), (43, 20);


INSERT INTO
    prof_award (professional_id, award_id, year)
VALUES
    (1, 2, 2019), (1, 8, 2019), (2, 4, 2019), (3, 3, 2019), (3, 11, 2019), (3, 20, 2019),
    (5, 5, 2019), (4, 4, 2019), (6, 7, 2019), (7, 18, 2019), (8, 19, 2019), (9, 21, 2019),
    (10, 22, 2019), (11, 23, 2019), (12, 24, 2019), (13, 24, 2019), (14, 8, 2019),
    (14, 2, 2019), (15, 2, 2020), (15, 3, 2020), (15, 8, 2020), (15, 25, 2020), (16, 4, 2020),
    (17, 5, 2020), (18, 6, 2020), (19, 7, 2020), (20, 8, 2020), (21, 9, 2020), (23, 10, 2019),
    (24, 13, 2019), (25, 12, 2019);


INSERT INTO
    movie_award (movie_id, award_id, year)
VALUES
    (1, 2, 2019), (1, 8, 2019), (1, 6, 2019), (2, 3, 2019), (2, 11, 2019), (2, 20, 2019),
    (3, 5, 2019), (4, 5, 2019), (5, 9, 2019), (6, 10, 2019), (7, 12, 2019), (8, 13, 2019),
    (9, 14, 2019), (10, 15, 2019), (11, 16, 2019), (11, 19, 2019), (11, 22, 2019),
    (12, 23, 2019), (12, 17, 2019), (12, 18, 2019), (12, 4, 2019), (13, 21, 2019),
    (14, 24, 2019), (15, 1, 2019), (16, 2, 2020), (16, 3, 2020), (16, 8, 2020), 
    (16, 25, 2020), (17, 9, 2020), (18, 10, 2020), (19, 12, 2020), (20, 14, 2020),
    (21, 16, 2020), (21, 4, 2020), (22, 5, 2020),(23, 19, 2020), (23, 6, 2020), (24, 7, 2020);



INSERT INTO 
    follows (user_id, list_id)
VALUES
    (2, 8), (13, 13), (3, 13), (10, 8), (7, 7), (7, 13), (20, 5), (13, 11), (15, 4),
    (7, 11), (5, 17), (8, 20), (17, 16), (8, 18), (4, 19), (3, 2), (2, 2), (13, 16),
    (5, 8), (3, 4);


INSERT INTO
    reviews (user_id, movie_id, rev_text, submit_time, score)
VALUES
    (19, 10, 'Knowledge often appear old. Term leg since. Between bag result.
Goal short tough common power cut. We best south today.', '2020-10-10', 6),
    (20, 13, 'Authority cold evidence party. Expert management road in. Set although about never.
Music rock stop fight against enjoy specific. Bring continue very drop catch experience grow. Child art popular.', '2020-10-11', 6),
    (8, 14, 'Close never see study. Idea trade force yeah present. House serious film nature current.
Suddenly challenge wonder step stage personal. Off hour effect at local.', '2020-10-13', 9),
    (12, 19, 'Campaign make name list wish decide too. Help read tend. Other senior car picture campaign.
Indicate establish industry western boy hour task. Film all shoulder themselves two view follow.', '2020-10-05', 8),
    (9, 13, 'He market group simply.
Under short practice scene face condition realize. Method modern system report until. Could hard always let people out also.', '2020-09-09', 9),
    (19, 17, 'Nature listen team begin fly fly. Table image discuss become apply.
Couple lawyer account who color available then.
Total get animal live door listen. Wear hit may.', '2020-09-29', 10),
    (13, 11, 'Analysis American work finish. Occur often wonder live. Deal too light instead or remember.
Audience bring push become. Not lose year.', '2020-10-18', 6),
    (17, 2, 'About mouth natural treat never camera someone. Easy act power important wish speak respond.', '2020-10-21', 6),
    (16, 7, 'Girl whom late rather. Miss parent total account.
Relate knowledge dog church. Myself house either watch. Staff people away red.
Us draw crime prepare.', '2020-10-09', 9),
    (1, 3, 'Society month us cultural. Why whether everything.
Less rise discussion else hot a week. Important language best always kitchen. Media several determine near call new artist.', '2020-09-19', 8),
    (15, 9, 'Sign outside fast. Few region side soldier although tax score. Tend stay keep speak. Choice on society production.
No probably impact open source what. Area consumer rock act oil identify finish.', '2020-09-02', 6),
    (8, 5, 'Bag hope note special increase itself continue public. Send idea past sound ten. Mother job fast mouth kid.', '2020-09-03', 8),
    (17, 9, 'Shake still left staff. Good professional bit no. Bag defense though first situation record.
Total arm decision threat heavy central free. Take lawyer play loss three.', '2020-10-15', 8),
    (4, 19, 'Hot provide phone push include. What least speech attention wrong window national.', '2020-09-17', 8),
    (2, 9, 'She enter stage hear wear option turn. Star statement modern.
Word real lose. Case letter civil.
Table firm find sign democratic list another. Know science relate cut perhaps.', '2020-10-14', 7),
    (17, 8, 'Leg without identify soon first choice. Style short term. Join move follow ahead carry main. We say head important financial.
Hold not different exist ago. Degree despite imagine Mrs beyond five.', '2020-09-17', 7),
    (2, 10, 'Marriage soon finally up stage success direction. Rather case most bank. Home case why worker.
Magazine boy focus letter example. Them case service water. Us subject authority.', '2020-10-14', 8),
    (14, 16, 'Couple conference southern break. Measure computer moment some. Camera growth hotel his turn their word.', '2020-09-21', 9),
    (2, 4, 'Sing state find become say. Suffer imagine support citizen employee sign local car. Cold election question director window describe image everything.', '2020-09-17', 8),
    (18, 10, 'System similar operation rich build. Effect eye once change its. Sit us young so fly speech whose.', '2020-10-19', 10);


INSERT INTO
    movie_in_list (movie_id, list_id)
VALUES
    (14, 16), (1, 3), (7, 3),(11, 17), (20, 13),(16, 7), (5, 20), (1, 17),
    (1, 9), (7, 5), (20, 19), (5, 14), (20, 11), (14, 20), (8, 20), (3, 15),
    (18, 3), (4, 2), (4, 20), (18, 10);


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



