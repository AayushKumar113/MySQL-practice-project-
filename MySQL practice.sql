create database aayush;

use aayush;

create table students(
id INT auto_increment primary key,
name VARCHAR(50),
age INT NOT NULL,
grade char,
seat_no INT unique);

insert into students(
name, age, grade, seat_no)
values
("Anil", 25, "A", 12456),
("Aayush", 18, "A", 45134),
("Piyush", 17, "B", 478569),
("Kamlesh", 42, "B", 754326);

SELECT * FROM students;

SELECT name, age FROM students;

SELECT name, age, grade FROM students;

SELECT * FROM students
WHERE id = 2;

SELECT * FROM students
WHERE grade = "A";

SELECT * FROM students
WHERE age = 25;

SELECT * FROM students
WHERE NOT grade = "A";

SELECT * FROM students
WHERE age > 18;

SELECT * FROM students
WHERE age >= 17;

SELECT * FROM students
WHERE name = "Anil";

SELECT * FROM students
WHERE age BETWEEN 18 AND 30;

SELECT * FROM students
WHERE age < 25 AND grade = "B";

SELECT * FROM students
WHERE age = 17 OR age = 40;

SELECT * FROM students
WHERE name LIKE 'A%';

SELECT * FROM students
WHERE name LIKE '%y%';

SELECT * FROM students
WHERE roll_no > 50000;

SELECT *  FROM students
WHERE age = 42 OR grade = "A";

SELECT *  FROM students
WHERE NOT age BETWEEN 18 AND 30;

SELECT * FROM students
WHERE CHAR_LENGTH(name) > 5;

SELECT * FROM students
ORDER BY age;

SELECT * FROM students
ORDER BY age DESC;

SELECT * FROM students
ORDER BY name;

SELECT * FROM students
ORDER BY grade;

SELECT * FROM students
ORDER BY age DESC;

SELECT * FROM students
ORDER BY roll_no DESC;

SELECT * FROM students
ORDER BY age ASC
LIMIT 2;

SELECT * FROM students
ORDER BY age DESC
LIMIT 2;

SELECT * FROM students
ORDER BY char_length(name) DESC;

SELECT * FROM students
ORDER BY name DESC;

SELECT * FROM students
LIMIT 2;

SELECT * FROM students
ORDER BY id DESC
LIMIT 2;

SELECT DISTINCT grade FROM students;

SELECT DISTINCT age FROM students;

SELECT DISTINCT roll_no FROM students;

SELECT DISTINCT age FROM students
ORDER BY age DESC
LIMIT 1;

SELECT DISTINCT age FROM students
ORDER BY age
LIMIT 1;

SELECT DISTINCT roll_no FROM students
ORDER BY roll_no
LIMIT 3;

SELECT DISTINCT age FROM students
ORDER BY age DESC
LIMIT 1;

SELECT * FROM students
WHERE id = 3;

SELECT COUNT(*) FROM students;

SELECT COUNT(grade) FROM students;

SELECT AVG(age) FROM students;

SELECT MIN(age) FROM students;

SELECT MAX(age) FROM students;

SELECT count(roll_no) FROM students;

SELECT COUNT(*), grade FROM students
WHERE grade = "B"
GROUP BY grade;

SELECT SUM(age), grade FROM students
GROUP BY grade;

SELECT COUNT(*) FROM students
GROUP BY age;

SELECT AVG(roll_no), grade FROM students
GROUP BY grade;

SELECT COUNT(*), grade FROM students
GROUP BY grade;