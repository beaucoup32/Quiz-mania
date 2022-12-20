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
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('1', 'Who did The Winter Soldier take shelter with during “Infinity War”?', 'Hawkeye', 'Ant-man', 'Wong', 'Black Panther', 'd');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('1', 'Who is the villain in Guardians of the Galaxy: Vol 1?', 'Thanos', 'Ronan The Accuser', 'Obidiah Stane', 'Yondu Udonta', 'b');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('1', 'What does S.H.I.E.L.D stand for?', 'Space Human Investigation on Energy, Light and Deities', 'Strategic Hero Intervention, Enforcement and Logistics Division', 'Strategic Homeland Intervention, Enforcement and Logistics Division', 'Stones Hidden In Extraterrestrial Lands and Demographics', 'c');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('1', 'What type of scientist is Jane Foster in Thor?', 'Astronomer', 'Biologist', 'Chemist', 'Dioptrics', 'a');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('1', 'During which war did Captain America get his superhuman abilities?', 'Civil War', 'World War I', 'World War II', 'The Cold War', 'c');
INSERT INTO questions (quiz_id, question, choice_a, choice_b, choice_c, choice_d, answer) VALUES ('1', 'What is the name of Peter Quill’s home planet?', 'Mordor', 'Goddricks Hollow', 'Earth', 'Morag', 'c');



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

