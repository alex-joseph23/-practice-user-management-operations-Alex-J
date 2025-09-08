INSERT INTO users (username, firstName, lastName, age) -- insert into different rows the following values
VALUES
 ('asmith', 'Alice', 'Smith', 20),
 ('bdoe', 'Bob', 'Doe', 33),
 ('cjohnson', 'Charlie', 'Johnson', 41),
 ('dlee', 'David', 'Lee', 19),
 ('ejones', 'Eve', 'Jones', 30),
 ('fkim', 'Frank', 'Kim', 15),
 ('gwhite', 'Grace', 'White', 22),
 ('hwang', 'Henry', 'Wang', 19),
 ('ijones', 'Ivy', 'Jones', 50),
 ('jdoe', 'John', 'Doe', 65),
 ('klee', 'Kevin', 'Lee', 62),
 ('lchen', 'Linda', 'Chen', 24),
 ('mlee', 'Michael', 'Lee', 29),
 ('nkim', 'Nancy', 'Kim', 18),
 ('ojohnson', 'Oscar', 'Johnson', 40),
 ('pchen', 'Peter', 'Chen', 55),
 ('qwang', 'Quincy', 'Wang', 28),
 ('rjones', 'Rachel', 'Jones', 37),
 ('slee', 'Sam', 'Lee', 21),
 ('tkim', 'Tina', 'Kim', 26);
 SELECT * FROM users; -- verify data was inserted
 SET SQL_SAFE_UPDATES = 0; -- turn safe mode off
 UPDATE users SET firstName = 'Jane', lastName = 'Doe' WHERE username = 'jdoe'; -- update first name and last name to Jane Doe for user
 DELETE FROM users WHERE username = 'jdoe'; -- the user jdoe
SELECT firstName, lastName FROM users WHERE lastName = 'Doe';  -- Select the first and last name for users whose last name is Doe
SELECT * FROM users WHERE lastName="lee" AND firstName="sam"; -- Select users with the first and last names sam and lee
 SELECT * FROM users WHERE lastName="lee" OR firstName="sam"; -- or instead of and
SELECT * FROM users WHERE lastName="lee" AND NOT firstName="sam"; -- last name lee but first name not sam
SELECT * FROM users WHERE lastName="lee" AND (firstName="sam" OR firstName="kevin"); -- find users named sam lee or kevin lee
SELECT firstName AS First, lastName AS Last FROM users; -- rename output columns First and Last
SELECT username, age+10 AS ageIn10Years FROM users; -- calcualte age + 10 years for each user
SELECT concat(firstName, " ", lastName) AS fullName FROM users; -- firstName and lastName into a column named Full name
SELECT * FROM users ORDER BY age DESC; -- all users in order of descending age
SELECT * FROM users ORDER BY lastName ASC, firstName ASC; -- all users by last name in ascending order
SELECT * FROM users LIMIT 5; -- first five rows
SELECT * FROM users LIMIT 5 OFFSET 5; -- skip first five rows
SELECT * FROM users ORDER BY lastName ASC LIMIT 10 OFFSET 20; -- ten rows after the first 20 by last name ascending