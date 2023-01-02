-- Users table seeds here (Example)
INSERT INTO users (name, email, password) VALUES ('Carol', 'c@c.ca', 'password');
INSERT INTO users (name, email, password) VALUES ('Donnie', 'd@d.ca', 'password');
INSERT INTO users (name, email, password) VALUES ('Jordan', 'j@j.ca', 'password');


--level in boolean false for normal, true for hard
INSERT INTO quizzes (owner_id, quiz_name, level) VALUES ('1', 'Marvel Normal', 'false');
INSERT INTO quizzes (owner_id, quiz_name, level) VALUES ('1', 'Marvel Hard', 'true');



--questions for quiz
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('1', 'How many Infinity Stones are there?', '5', '6', '7', '8', 'b');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('1', 'Who did The Winter Soldier take shelter with during “Infinity War”?', 'Hawkeye', 'Ant-man', 'Wong', 'Black Panther', 'd');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('1', 'Who mentored Doctor Strange?', 'The Ancient One', 'Wong', 'Baron Mordo', 'Lucian', 'a');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('1', 'In Avengers Endgame, who kills Thanos in the first half of the movie?', 'Iron Man', 'Captain America', 'Doctor Strange', 'Thor', 'd');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('2', 'Who did The Winter Soldier take shelter with during “Infinity War”?', 'Hawkeye', 'Ant-man', 'Wong', 'Black Panther', 'd');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('1', '???', '5', '6', '7', '8', 'b');


--questions for marvel hard
INSERT INTO questions (quiz_id, questions, choice_a, choice_b, choice_c, choice_d, answer)
VALUES ('1', 'What comic first introduced the Infinite Stones?', 'Marvel Premiere #1', 'Marvel Team-Up #55', 'The Infinite Gauntlet #1', 'Guardians of the Galaxy #1', 'a' );

--questions for marvel hard
INSERT INTO questions (quiz_id, questions, choice_a, choice_b, choice_c, choice_d, answer)
VALUES ('1', 'What year was Captain America born?', '1915', '1917', '1920', '1922' 'c'  );

--questions for marvel hard
INSERT INTO questions (quiz_id, questions, choice_a, choice_b, choice_c, choice_d, answer)
VALUES ('1', 'Which character shares their power origin with Dr.Strang and the Bands of Cyttorack?', 'Wanda Maximoff', 'Brother Voodoo', 'Juggernaut', 'High Evolutionary', 'c');

--questions for marvel hard
INSERT INTO questions (quiz_id, questions, choice_a, choice_b, choice_c, choice_d, answer)
VALUES ('1', 'What animal shares the powers of THOR?', 'dog', 'frog', 'cat', 'pig', 'b');

--questions for marvel hard
INSERT INTO questions (quiz_id, questions, choice_a, choice_b, choice_c, choice_d, answer)
VALUES ('1', 'What year did Thors sister Angela debut in comics?', '1975', '1993', '2002', '2020', 'b');

--questions for marvel hard
INSERT INTO questions (quiz_id, questions, choice_a, choice_b, choice_c, choice_d, answer)
VALUES ('1', 'Who is the 3rd herald of Galactus?', 'Morg', 'Nova', 'Air Walker', 'Silver Surfer', 'a' );

--questions for marvel hard
INSERT INTO questions (quiz_id, questions, choice_a, choice_b, choice_c, choice_d, answer)
VALUES ('1', 'What is the name of Charles Xaviers sister?', 'La Landra', 'Moira', 'Jean', 'Cassandra', 'd');

--questions for marvel hard
INSERT INTO questions (quiz_id, questions, choice_a, choice_b, choice_c, choice_d, answer)
VALUES ('1', 'Which character didnt wear the Iron Man armor?', 'Aunt May', 'Dr. Doom', 'Reed Richards', 'Mary Jane Watson', 'c');

--questions for marvel hard
INSERT INTO questions (quiz_id, questions, choice_a, choice_b, choice_c, choice_d, answer)
VALUES ('1', 'Which character wasnt part of a Sinister 6?', 'Prowler', 'Venom', 'Carnage', 'Grim Reaper', 'b');

--questions for marvel hard
INSERT INTO questions (quiz_id, questions, choice_a, choice_b, choice_c, choice_d, answer)
VALUES ('1', 'Who didnt kill the Marvel Universe?', 'Wolverine', 'Dead Pool', 'The Punisher', 'Blade', 'd');

--questions for marvel hard
INSERT INTO questions (quiz_id, questions, choice_a, choice_b, choice_c, choice_d, answer)
VALUES ('1', 'Who wasnt a Sorcerer Supreme?', 'Wanda Maximoff', 'Loki', 'Illyana Rasputina', 'Xhoohx', 'a');




  --questions for Videogames hard
INSERT INTO questions (quiz_id, questions, choice_a, choice_b, choice_c, choice_d, answer)
VALUES ('1', 'Which one is not a Mario game?', 'Hotel Mario', 'Mario Family', 'Mario Wacky Worlds', 'NBA Street V3', 'c');

  --questions for Videogames hard
INSERT INTO questions (quiz_id, questions, choice_a, choice_b, choice_c, choice_d, answer)
VALUES ('1', 'Which one is not a Zelda game?', 'Tetras Trackers', 'Freshly Picked Tingles Rosy Rupeelan', 'Zelda Spirit Tracks', 'BS Zelda', 'a');

  --questions for Videogames hard
INSERT INTO questions (quiz_id, questions, choice_a, choice_b, choice_c, choice_d, answer)
VALUES ('1', 'Which character wasnt in the Tekken series?', 'Spawn', 'Gon', 'Yoda', 'Kratos', 'd');

  --questions for Videogames hard
INSERT INTO questions (quiz_id, questions, choice_a, choice_b, choice_c, choice_d, answer)
VALUES ('1', 'Which generation does Pokemon Soul Silver belong to?', 'Gen 2', 'Gen 3', 'Gen 4', 'Gen 5', 'c');

  --questions for Videogames hard
INSERT INTO questions (quiz_id, questions, choice_a, choice_b, choice_c, choice_d, answer)
VALUES ('1', 'Who designed the original Phantasy Star?', 'Yuji Naka', 'Kotaro Hayashida', 'Rieko Kodama', 'Tokuhiko Uwabo', 'b');

  --questions for Videogames hard
INSERT INTO questions (quiz_id, questions, choice_a, choice_b, choice_c, choice_d, answer)
VALUES ('1', 'What were the estimated life time sales of the Sega Saturn', '4.24 million', '7.56 million', '8.76 million', '9.26 million', 'd');

--questions for Videogames hard
INSERT INTO questions (quiz_id, questions, choice_a, choice_b, choice_c, choice_d, answer)
VALUES ('1', 'What were the estimated life time sales of the Sony PSX?', '82.52 million', '93.56 million', '102.49 million', '110.27 million', 'c');

--questions for Videogames hard
INSERT INTO questions (quiz_id, questions, choice_a, choice_b, choice_c, choice_d, answer)
VALUES ('1', 'What were the estimated life time sales of the Nintendo 64?', '18.92 million', '32.93 million', '45.98 million', '54.12 million', 'b');

--questions for Videogames hard
INSERT INTO questions (quiz_id, questions, choice_a, choice_b, choice_c, choice_d, answer)
VALUES ('1', 'What was the orginal name for RARE limited?', 'Ultimate Play the Game', 'Stamper Bros Inc.', 'Ultra Games', 'British Games', 'a')

--questions for Videogames hard
INSERT INTO questions (quiz_id, questions, choice_a, choice_b, choice_c, choice_d, answer)
VALUES ('1', 'What was the highest selling Tekken game?', 'Tekken 2', 'Tekken 3', 'Tekken 5', 'Tekken 7', 'b');



--questions for Videogames easy
INSERT INTO questions (quiz_id, questions, choice_a, choice_b, choice_c, choice_d, answer)
VALUES ('1', 'Who is the creator of Mario?', 'Shigeru Miyamoto', 'Yuji Naka', 'Eiji Aonuma', 'Akira Kitamura', 'a');

--questions for Videogames easy
INSERT INTO questions (quiz_id, questions, choice_a, choice_b, choice_c, choice_d, answer)
VALUES ('1', 'What was Marios original name?', 'Shoot man', 'Luigi', 'Running Man', 'Jump Man', 'd');

--questions for Videogames easy
INSERT INTO questions (quiz_id, questions, choice_a, choice_b, choice_c, choice_d, answer)
VALUES ('1', 'How many Tekken games came out on the PSX?', '1', '3', '5', '7', 'b');

--questions for Videogames easy
INSERT INTO questions (quiz_id, questions, choice_a, choice_b, choice_c, choice_d, answer)
VALUES ('1', 'Who is the Mascot for the XBOX?', 'Mario', 'Sonic', 'Master Chief', 'Crash', 'c');

--questions for Videogames easy
INSERT INTO questions (quiz_id, questions, choice_a, choice_b, choice_c, choice_d, answer)
VALUES ('1', 'How many Tekken games came out on the PSX?', '1', '3', '5', '7', 'b');

--questions for Videogames easy
INSERT INTO questions (quiz_id, questions, choice_a, choice_b, choice_c, choice_d, answer)
VALUES ('1', 'Who is the Mascot for the SEGA?', 'Sonic', 'Mario', 'Master Chief', 'Crash', 'a');

--questions for Videogames easy
INSERT INTO questions (quiz_id, questions, choice_a, choice_b, choice_c, choice_d, answer)
VALUES ('1', 'Who is the Mascot for Namco?', 'Mario', 'Sonic', 'Pac-Man', 'Crash', 'c');

--questions for Videogames easy
INSERT INTO questions (quiz_id, questions, choice_a, choice_b, choice_c, choice_d, answer)
VALUES ('1', 'What is the worlds highest selling game?', 'Mario Kart', 'Minecraft', 'Wii-Sports', 'Animal Crossing', 'b');

--questions for Videogames easy
INSERT INTO questions (quiz_id, questions, choice_a, choice_b, choice_c, choice_d, answer)
VALUES ('1', 'Which one isnt a Nintendo character?', 'Mario', 'Sonic', 'Captain Falcon', 'Little Mac', 'b');

--questions for Videogames easy
INSERT INTO questions (quiz_id, questions, choice_a, choice_b, choice_c, choice_d, answer)
VALUES ('1', 'What famous RPG is Squaresoft known for', 'Dragon Quest', 'Tales Series', 'Earthbound', 'Final Fantasy', 'd');
