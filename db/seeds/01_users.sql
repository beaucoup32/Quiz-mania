-- Users table seeds here (Example)
INSERT INTO users (name, email, password) VALUES ('Carol', 'c@c.ca', 'password');
INSERT INTO users (name, email, password) VALUES ('Donnie', 'd@d.ca', 'password');
INSERT INTO users (name, email, password) VALUES ('Jordan', 'j@j.ca', 'password');


--quizzes table level in boolean false for normal, true for hard
INSERT INTO quizzes (id, owner_id, quiz_name, level, public) VALUES ('1', '1', 'Marvel Normal', 'f', 't');
INSERT INTO quizzes (id, owner_id, quiz_name, level, public) VALUES ('2', '1', 'Marvel Hard', 't', 't');
INSERT INTO quizzes (id, owner_id, quiz_name, level, public) VALUES ('3', '2', 'Tekken Normal', 'f', 't');
INSERT INTO quizzes (id, owner_id, quiz_name, level, public) VALUES ('4', '2', 'Tekken Hard', 't', 't');



--scores db
INSERT INTO scores (id, player_id, quiz_id, score) VALUES ('1', '1', '1', '10');
INSERT INTO scores (id, player_id, quiz_id, score) VALUES ('2', '1', '2', '8');
INSERT INTO scores (id, player_id, quiz_id, score) VALUES ('3', '2', '3', '10');
INSERT INTO scores (id, player_id, quiz_id, score) VALUES ('4', '2', '4', '9');


--questions for marvel normal
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('1', 'How many Infinity Stones are there?', '5', '6', '7', '8', 'b');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('1', 'Who did The Winter Soldier take shelter with during “Infinity War”?', 'Hawkeye', 'Ant-man', 'Wong', 'Black Panther', 'd');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('1', 'Who mentored Doctor Strange?', 'The Ancient One', 'Wong', 'Baron Mordo', 'Lucian', 'a');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('1', 'In Avengers Endgame, who kills Thanos in the first half of the movie?', 'Iron Man', 'Captain America', 'Doctor Strange', 'Thor', 'd');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('1', 'Who did The Winter Soldier take shelter with during “Infinity War”?', 'Hawkeye', 'Ant-man', 'Wong', 'Black Panther', 'd');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('1', 'Who is the villain in Guardians of the Galaxy: Vol 1?', 'Thanos', 'Ronan The Accuser', 'Obidiah Stane', 'Yondu Udonta', 'b');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('1', 'What is Nick Furys middle name?', 'Josiah', 'John', 'Jacob', 'Joseph', 'c');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('1', 'What type of scientist is Jane Foster in Thor?', 'Astronomer', 'Biologist', 'Chemist', 'Dioptrics', 'a');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('1', 'During which war did Captain America get his superhuman abilities?', 'Civil War', 'World War I', 'World War II', 'The Cold War', 'c');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('1', 'What is the name of Peter Quill’s home planet?', 'Mordor', 'Goddricks Hollow', 'Earth', 'Morag', 'c');


--questions for marvel hard
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('2', 'Which film does Black Panther first appear?', 'Captain America: The Winter Soldier', 'Captain America: Civil War', 'Black Panther', 'Thor', 'b');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('2', 'What is the name of the amulet Doctor Strange wears around his neck?', 'The Eye of Agamotto', 'The Orb of Mordo', 'The Relic of Kamar-Taj', 'Molnir', 'a');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('2', 'The final battle between Spider-Man and Mysterio takes place on which bridge?', 'Hammersmith Bridge', 'London Bridge', 'Tower Bridge', 'Waterloo Bridge', 'c');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('2', 'What is the name of the AI installed in Spider-Mans suit?', 'Edith', 'Friday', 'Jarvis', 'Karen', 'd');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('2', 'What food did Morgan Stark want to eat at her dads funeral in the movie, Avengers: End Game?', 'Cheeseburger', 'Grilled Cheese', 'Pizza', 'Turkey Melt', 'a');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('2', 'Which of the following characters did not disappear during the ”blip”?', 'Spiderman', 'Black Panther', 'Doctor Strange', 'Rocket', 'd');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('2', 'What is Thors mothers name?', 'Frya', 'Feera', 'Fridda', 'Frigga', 'd');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('2', 'Which of these characters is NOT part of Thanos family?', 'Nebula', 'Vision', 'Gamora', 'Eros', 'd');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('2', 'What species did Loki discover he is?', 'Human', 'Asgardian', 'Frost giant', 'A god', 'c');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('2', 'Which Eternal watched over Thena?', 'Sersi', 'Ikaris', 'Ajak', 'Gilgamesh', 'd');


--questions for tekken normal
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('3', 'Who is the father of Anna and Nina?', 'Steve Williams', 'Robin Williams', 'Richard Williams', 'Rick Williams', 'c');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('3', 'Who is the mother of Kazuya?', 'Jinpachi Mishima', 'Jin Mishima', 'Jun Mishima', 'Kazumi Mishima', 'd');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('3', 'Beside Combot, which other character has the fighting style of mimicry', 'Mokujin', 'Mokujun', 'Mokuba', 'Mokojin', 'a');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('3', 'Who attacked Hwoarangs mentor, Baek Doo San in the Tekken 2 tournament?', 'Jin Kazama', 'Kazuya Mishima', 'Devil', 'Ogre', 'd');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('3', 'Who is the grandfather of Christie Monteiro?', 'Ho Chi Monterio', 'Ho Chi Myong', 'Eddy Gordo', 'Ho Chi Gordo', 'b');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('3', 'Who of the following is NOT related to Jin, as family?', 'Heihachi Mishima', 'Jun Kazama', 'Ling Xiaoyu', 'Kazuya Mishima', 'c');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('3', 'Who of the following is NOT part of the Jack Series?', 'P. Jack', 'Jackal', 'Gun Jack', 'Jack 2', 'b');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('3', 'What is the name of the boxing kangaroo in Tekken 2?', 'Roger', 'Kuma', 'Alex', 'Gon', 'a');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('3', 'What is the name of the doctor that was kidnapped by Kazuya during the Tekken 2 Tournament?', 'Dr. Bonsovitch', 'Dr. Abel', 'Dr. Bosconovitch', 'Dr. Nick', 'c');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('3', 'What happened to Paul Phoenix at the end of Tekken 3?', 'Boulders blocked his patch', 'Goes on a date', 'Continues his training', 'He got pull over by a cop', 'd');


--questions for tekken hard
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('4', 'Which of these characters is not playable in any way in the first Tekken?', 'Heihachi Mishima', 'Wang Jinrei', 'Forest Law', 'Devil Kazuya', 'c');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('4', 'In Tekken 2, what character would you need to beat the game with to unlock Heihachi?', 'Kazuya Mishima', 'None; he is selectable from start', 'Jun Kazama', 'Jack-2', 'b');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('4', 'Tekken 3 has less characters compared to Tekken 2. How many characters were there in Tekken 2 and Tekken 3, respectively, in the home versions?', '21-19', '23-21', '27-18', 'They have the same amount of characters', 'b');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('4', 'Tekken 4 had three new characters in its roster. Which one of them had connections with characters from the previous games?', 'Craig Marduk', 'Steve Fox', 'Christie Monteiro', 'All of them', 'd');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('4', 'Tekken 5 had an amazing thirty characters in its roster. How many of them were unlockable by beating story mode?', '9', '10', '11', '12', 'b');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('4', 'Tekken 6 is the first Tekken game to be released in arcades only in Japan. What year was it released in?', '2004', '2005', '2006', '2007', 'd');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('4', 'In Tekken: Dark Resurrection, how many new characters were added to the roster?', '2', '3', '4', '7', 'a');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('4', 'Tekken Advance featured a tag mode similar to Tekken Tag Tournament, and only ten characters, which two characters were removed from the starting roster?', 'Lei and Jin', 'Anna and Bryan', 'Lei and Eddy', 'Mokujin and Jun', 'c');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('4', 'Okay, if you are a fan of the Tekken series, this should be the easiest question so far. What is the name of the company behind Tekken?', 'Namco', 'Ubisoft', 'Midway', 'Capcom', '');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('4', 'The fourth game Tekken Tag Tournament had the most characters to date. What feature was new to this game that is yet to appear in any of the other Tekken games?', 'Tag Battles', 'Teken Force', 'Tekken Football', 'None of the above', 'a');
