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
