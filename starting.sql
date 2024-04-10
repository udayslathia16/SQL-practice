create database college;

use college;

CREATE TABLE student(
	rollno INT primary KEY,
    name varchar(50)
);

SELECT * FROM student;

INSERT INTO student(rollno , name) values
	(101,"UDAY"),
    (102,"JACK");
