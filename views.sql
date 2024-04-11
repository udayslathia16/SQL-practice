CREATE DATABASE college;
drop database college;
USE college;



CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
    );
DROP table student;  
 
INSERT INTO student(rollno,name,marks,grade,city) 
 values
(101,"anil",78,"C","Pune"),
(102,"bhumika",93,"A","Mumbai"),
(103,"chetan",85,"B","Mumbai"),
(104,"dhruv",96,"A","Delhi"),
(105,"emanuel",92,"F","Delhi"),
(106,"farah",82,"B","Delhi");

#avg marks
select avg(marks) from student;

#marks > avg
select marks,name from student where marks>87.66;

#subquery
select marks,name from student where marks >(select avg(marks) from student);

#even roll number
select rollno from student where rollno%2=0;

#subquer name with even roll no
select name,rollno from student where rollno in (select rollno from student where rollno%2=0);

#student from delhi
select * from student where city="delhi";

#max max 
select max(marks),name from student;

#subquery max marks from delhi
select max(marks) from (select * from student where city="delhi" )as temp;

#view
create view view1 as
select rollno,name,marks from student;

select * from view1;

drop view view1;












 



















 