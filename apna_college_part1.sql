CREATE DATABASE college1;
USE college1;
CREATE TABLE student(rollno INT PRIMARY KEY,
					name VARCHAR(50),
					marks INT NOT NULL,
                    grade VARCHAR(1),
                    city VARCHAR(20)
                    );
INSERT INTO student (rollno,name,marks,grade,city) 
VALUES (101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");
SELECT DISTINCT city from student;
SELECT * FROM student where marks>80;
SELECT * FROM student WHERE marks>90 AND city="mumbai";
SELECT * FROM student WHERE marks>90 OR city="mumbai";
SELECT * FROM student WHERE marks BETWEEN 80 AND 90;
SELECT * FROM student WHERE city IN ("Delhi","Mumbai");
SELECT * FROM student WHERE city NOT IN ("Delhi","Mumbai");
SELECT * FROM student WHERE marks>75 LIMIT 3;
SELECT * FROM student ORDER BY marks DESC LIMIT 3;
SELECT MAX(marks) FROM student ;
SELECT AVG(marks) FROM student ;
SELECT marks from student;
SELECT count(name) FROM student ;
SELECT city,count(name) FROM student GROUP BY city ;
SELECT city,name,count(name) FROM student GROUP BY city,name ;
SELECT city,avg(marks) FROM student GROUP BY city ;
SELECT city,avg(marks) FROM student GROUP BY city ORDER BY avg(marks) ;
SET SQL_SAFE_UPDATES=0;
UPDATE student SET grade="O" WHERE grade="A";
UPDATE student SET grade="B" WHERE marks between 80 AND 90;
SELECT * FROM student;
