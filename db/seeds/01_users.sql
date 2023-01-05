-- Users table seeds here (Example)
INSERT INTO users (name, email, password) VALUES ('Carol', 'c@c.ca', 'password');
INSERT INTO users (name, email, password) VALUES ('Donnie', 'd@d.ca', 'password');
INSERT INTO users (name, email, password) VALUES ('Jordan', 'j@j.ca', 'password');


--quizzes table level in boolean false for normal, true for hard
INSERT INTO quizzes (id, owner_id, category, quiz_name, level, public, quiz_url) VALUES ('1', '1', 'movies', 'Marvel Normal', 'f', 't', 'b6UTxQ');
INSERT INTO quizzes (id, owner_id, category, quiz_name, level, public, quiz_url) VALUES ('2', '1', 'movies', 'Marvel Hard', 't', 'f', 'i3BoGr');
INSERT INTO quizzes (id, owner_id, category, quiz_name, level, public, quiz_url) VALUES ('3', '2', 'games', 'Tekken Normal', 'f', 't', 'aJ48lW');
INSERT INTO quizzes (id, owner_id, category, quiz_name, level, public, quiz_url) VALUES ('4', '2', 'games', 'Tekken Hard', 't', 'f', 'j9Yi8s');
INSERT INTO quizzes (id, owner_id, category, quiz_name, level, public, quiz_url) VALUES ('5', '3', 'movies', 'Marvel2 Normal', 'f', 'f', '8mL3n1');
INSERT INTO quizzes (id, owner_id, category, quiz_name, level, public, quiz_url) VALUES ('6', '3', 'games', 'Videogames Normal', 'f', 't', 'w9l2Cv');
INSERT INTO quizzes (id, owner_id, category, quiz_name, level, public, quiz_url) VALUES ('7', '3', 'games', 'Videogames Hard', 't', 't', 'uK0q4U');

--scores db
INSERT INTO scores (id, player_id, quiz_id, score) VALUES ('1', '1', '1', '10');
INSERT INTO scores (id, player_id, quiz_id, score) VALUES ('2', '1', '2', '8');
INSERT INTO scores (id, player_id, quiz_id, score) VALUES ('3', '2', '3', '10');
INSERT INTO scores (id, player_id, quiz_id, score) VALUES ('4', '2', '4', '9');


--questions for marvel normal
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('1', 'movies', 'How many Infinity Stones are there?', '5', '6', '7', '8', 'b');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('1', 'movies', 'Who did The Winter Soldier take shelter with during “Infinity War”?', 'Hawkeye', 'Ant-man', 'Wong', 'Black Panther', 'd');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('1', 'movies', 'Who mentored Doctor Strange?', 'The Ancient One', 'Wong', 'Baron Mordo', 'Lucian', 'a');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('1', 'movies', 'In Avengers Endgame, who kills Thanos in the first half of the movie?', 'Iron Man', 'Captain America', 'Doctor Strange', 'Thor', 'd');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('1', 'movies', 'Who did The Winter Soldier take shelter with during “Infinity War”?', 'Hawkeye', 'Ant-man', 'Wong', 'Black Panther', 'd');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('1', 'movies', 'Who is the villain in Guardians of the Galaxy: Vol 1?', 'Thanos', 'Ronan The Accuser', 'Obidiah Stane', 'Yondu Udonta', 'b');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('1', 'movies', 'What is Nick Furys middle name?', 'Josiah', 'John', 'Jacob', 'Joseph', 'c');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('1', 'movies', 'What type of scientist is Jane Foster in Thor?', 'Astronomer', 'Biologist', 'Chemist', 'Dioptrics', 'a');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('1', 'movies', 'During which war did Captain America get his superhuman abilities?', 'Civil War', 'World War I', 'World War II', 'The Cold War', 'c');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('1', 'movies', 'What is the name of Peter Quill’s home planet?', 'Mordor', 'Goddricks Hollow', 'Earth', 'Morag', 'c');


--questions for marvel hard
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('2', 'movies', 'Which film does Black Panther first appear?', 'Captain America: The Winter Soldier', 'Captain America: Civil War', 'Black Panther', 'Thor', 'b');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('2', 'movies', 'What is the name of the amulet Doctor Strange wears around his neck?', 'The Eye of Agamotto', 'The Orb of Mordo', 'The Relic of Kamar-Taj', 'Molnir', 'a');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('2', 'movies', 'The final battle between Spider-Man and Mysterio takes place on which bridge?', 'Hammersmith Bridge', 'London Bridge', 'Tower Bridge', 'Waterloo Bridge', 'c');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('2', 'movies', 'What is the name of the AI installed in Spider-Mans suit?', 'Edith', 'Friday', 'Jarvis', 'Karen', 'd');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('2', 'movies', 'What food did Morgan Stark want to eat at her dads funeral in the movie, Avengers: End Game?', 'Cheeseburger', 'Grilled Cheese', 'Pizza', 'Turkey Melt', 'a');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('2', 'movies', 'Which of the following characters did not disappear during the ”blip”?', 'Spiderman', 'Black Panther', 'Doctor Strange', 'Rocket', 'd');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('2', 'movies', 'What is Thors mothers name?', 'Frya', 'Feera', 'Fridda', 'Frigga', 'd');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('2', 'movies', 'Which of these characters is NOT part of Thanos family?', 'Nebula', 'Vision', 'Gamora', 'Eros', 'd');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('2', 'movies', 'What species did Loki discover he is?', 'Human', 'Asgardian', 'Frost giant', 'A god', 'c');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('2', 'movies', 'Which Eternal watched over Thena?', 'Sersi', 'Ikaris', 'Ajak', 'Gilgamesh', 'd');


--questions for tekken normal
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('3', 'games', 'Who is the father of Anna and Nina?', 'Steve Williams', 'Robin Williams', 'Richard Williams', 'Rick Williams', 'c');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('3', 'games', 'Who is the mother of Kazuya?', 'Jinpachi Mishima', 'Jin Mishima', 'Jun Mishima', 'Kazumi Mishima', 'd');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('3', 'games', 'Beside Combot, which other character has the fighting style of mimicry', 'Mokujin', 'Mokujun', 'Mokuba', 'Mokojin', 'a');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('3', 'games', 'Who attacked Hwoarangs mentor, Baek Doo San in the Tekken 2 tournament?', 'Jin Kazama', 'Kazuya Mishima', 'Devil', 'Ogre', 'd');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('3', 'games', 'Who is the grandfather of Christie Monteiro?', 'Ho Chi Monterio', 'Ho Chi Myong', 'Eddy Gordo', 'Ho Chi Gordo', 'b');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('3', 'games', 'Who of the following is NOT related to Jin, as family?', 'Heihachi Mishima', 'Jun Kazama', 'Ling Xiaoyu', 'Kazuya Mishima', 'c');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('3', 'games', 'Who of the following is NOT part of the Jack Series?', 'P. Jack', 'Jackal', 'Gun Jack', 'Jack 2', 'b');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('3', 'games', 'What is the name of the boxing kangaroo in Tekken 2?', 'Roger', 'Kuma', 'Alex', 'Gon', 'a');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('3', 'games', 'What is the name of the doctor that was kidnapped by Kazuya during the Tekken 2 Tournament?', 'Dr. Bonsovitch', 'Dr. Abel', 'Dr. Bosconovitch', 'Dr. Nick', 'c');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('3', 'games', 'What happened to Paul Phoenix at the end of Tekken 3?', 'Boulders blocked his patch', 'Goes on a date', 'Continues his training', 'He got pull over by a cop', 'd');


--questions for tekken hard
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('4', 'games', 'Which of these characters is not playable in any way in the first Tekken?', 'Heihachi Mishima', 'Wang Jinrei', 'Forest Law', 'Devil Kazuya', 'c');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('4', 'games', 'In Tekken 2, what character would you need to beat the game with to unlock Heihachi?', 'Kazuya Mishima', 'None; he is selectable from start', 'Jun Kazama', 'Jack-2', 'b');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('4', 'games', 'Tekken 3 has less characters compared to Tekken 2. How many characters were there in Tekken 2 and Tekken 3, respectively, in the home versions?', '21-19', '23-21', '27-18', 'They have the same amount of characters', 'b');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('4', 'games', 'Tekken 4 had three new characters in its roster. Which one of them had connections with characters from the previous games?', 'Craig Marduk', 'Steve Fox', 'Christie Monteiro', 'All of them', 'd');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('4', 'games', 'Tekken 5 had an amazing thirty characters in its roster. How many of them were unlockable by beating story mode?', '9', '10', '11', '12', 'b');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('4', 'games', 'Tekken 6 is the first Tekken game to be released in arcades only in Japan. What year was it released in?', '2004', '2005', '2006', '2007', 'd');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('4', 'games', 'In Tekken: Dark Resurrection, how many new characters were added to the roster?', '2', '3', '4', '7', 'a');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('4', 'games', 'Tekken Advance featured a tag mode similar to Tekken Tag Tournament, and only ten characters, which two characters were removed from the starting roster?', 'Lei and Jin', 'Anna and Bryan', 'Lei and Eddy', 'Mokujin and Jun', 'c');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('4', 'games', 'Okay, if you are a fan of the Tekken series, this should be the easiest question so far. What is the name of the company behind Tekken?', 'Namco', 'Ubisoft', 'Midway', 'Capcom', 'a');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('4', 'games', 'The fourth game Tekken Tag Tournament had the most characters to date. What feature was new to this game that is yet to appear in any of the other Tekken games?', 'Tag Battles', 'Teken Force', 'Tekken Football', 'None of the above', 'a');


--questions for marvel2 normal
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('5', 'movies', 'What comic first introduced the Infinite Stones?', 'Marvel Premiere #1', 'Marvel Team-Up #55', 'The Infinite Gauntlet #1', 'Guardians of the Galaxy #1', 'a' );
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('5', 'movies', 'What year was Captain America born?', '1915', '1917', '1920', '1922', 'c'  );
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('5', 'movies', 'Which character shares their power origin with Dr.Strang and the Bands of Cyttorack?', 'Wanda Maximoff', 'Brother Voodoo', 'Juggernaut', 'High Evolutionary', 'c');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('5', 'movies', 'What animal shares the powers of THOR?', 'dog', 'frog', 'cat', 'pig', 'b');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('5', 'movies', 'What year did Thors sister Angela debut in comics?', '1975', '1993', '2002', '2020', 'b');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('5', 'movies', 'Who is the 3rd herald of Galactus?', 'Morg', 'Nova', 'Air Walker', 'Silver Surfer', 'a' );
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('5', 'movies', 'What is the name of Charles Xaviers sister?', 'La Landra', 'Moira', 'Jean', 'Cassandra', 'd');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('5', 'movies', 'Which character didnt wear the Iron Man armor?', 'Aunt May', 'Dr. Doom', 'Reed Richards', 'Mary Jane Watson', 'c');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('5', 'movies', 'Which character wasnt part of a Sinister 6?', 'Prowler', 'Venom', 'Carnage', 'Grim Reaper', 'b');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('5', 'movies', 'Who didnt kill the Marvel Universe?', 'Wolverine', 'Dead Pool', 'The Punisher', 'Blade', 'd');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('5', 'movies', 'Who wasnt a Sorcerer Supreme?', 'Wanda Maximoff', 'Loki', 'Illyana Rasputina', 'Xhoohx', 'a');


--questions for videogames normal
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('6', 'games', 'Who is the creator of Mario?', 'Shigeru Miyamoto', 'Yuji Naka', 'Eiji Aonuma', 'Akira Kitamura', 'a');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('6', 'games', 'What was Marios original name?', 'Shoot man', 'Luigi', 'Running Man', 'Jump Man', 'd');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('6', 'games', 'How many Tekken games came out on the PSX?', '1', '3', '5', '7', 'b');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('6', 'games', 'Who is the Mascot for the XBOX?', 'Mario', 'Sonic', 'Master Chief', 'Crash', 'c');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('6', 'games', 'How many Tekken games came out on the PSX?', '1', '3', '5', '7', 'b');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('6', 'games', 'Who is the Mascot for the SEGA?', 'Sonic', 'Mario', 'Master Chief', 'Crash', 'a');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('6', 'games', 'Who is the Mascot for Namco?', 'Mario', 'Sonic', 'Pac-Man', 'Crash', 'c');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('6', 'games', 'What is the worlds highest selling game?', 'Mario Kart', 'Minecraft', 'Wii-Sports', 'Animal Crossing', 'b');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('6', 'games', 'Which one isnt a Nintendo character?', 'Mario', 'Sonic', 'Captain Falcon', 'Little Mac', 'b');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('6', 'games', 'What famous RPG is Squaresoft known for', 'Dragon Quest', 'Tales Series', 'Earthbound', 'Final Fantasy', 'd');


--questions for videogames hard
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('7', 'games', 'Which one is not a Mario game?', 'Hotel Mario', 'Mario Family', 'Mario Wacky Worlds', 'NBA Street V3', 'c');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('7', 'games', 'Which one is not a Zelda game?', 'Tetras Trackers', 'Freshly Picked Tingles Rosy Rupeelan', 'Zelda Spirit Tracks', 'BS Zelda', 'a');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('7', 'games', 'Which character wasnt in the Tekken series?', 'Spawn', 'Gon', 'Yoda', 'Kratos', 'd');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('7', 'games', 'Which generation does Pokemon Soul Silver belong to?', 'Gen 2', 'Gen 3', 'Gen 4', 'Gen 5', 'c');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('7', 'games', 'Who designed the original Phantasy Star?', 'Yuji Naka', 'Kotaro Hayashida', 'Rieko Kodama', 'Tokuhiko Uwabo', 'b');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('7', 'games', 'What were the estimated life time sales of the Sega Saturn', '4.24 million', '7.56 million', '8.76 million', '9.26 million', 'd');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('7', 'games', 'What were the estimated life time sales of the Sony PSX?', '82.52 million', '93.56 million', '102.49 million', '110.27 million', 'c');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('7', 'games', 'What were the estimated life time sales of the Nintendo 64?', '18.92 million', '32.93 million', '45.98 million', '54.12 million', 'b');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('7', 'games', 'What was the orginal name for RARE limited?', 'Ultimate Play the Game', 'Stamper Bros Inc.', 'Ultra Games', 'British Games', 'a');
INSERT INTO questions (quiz_id, category, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('7', 'games', 'What was the highest selling Tekken game?', 'Tekken 2', 'Tekken 3', 'Tekken 5', 'Tekken 7', 'b');
