CREATE DATABASE college;

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
(105,"emanuel",12,"F","Delhi"),
(106,"farah",82,"B","Delhi");

select name,rollno from student;
select distinct city from student; 
select * from student where marks>80 AND city="Mumbai"; 
select * from student where marks between 80 and 90;
select * from student where city in("Delhi","Mumbai","Gurgaon");
select * from student limit 3; 
select * from student order by marks asc;
select * from student order by marks desc limit 3;
select max(marks) from student;
select city,count(name) from student group by city;
# practice avg marks in each city in ascending order
select city,avg(marks) from student group by city order by avg(marks) asc;

#grade ke basis par group
select grade,count(name) from student group by grade order by grade asc;

#having
select count(name),city from student group by city having max(marks)>90;

#update
set sql_safe_updates =0;
update student set grade="O" where grade ="A";

select *from student;


update student set grade="B" where marks between 80 and 90;

update student set marks=marks+1 ;
update student set marks=12 where name="emanuel";
#delete
delete from student where marks<33;


#foreign keys revisiting
CREATE TABLE dept(
	id INT PRIMARY KEY,
    name VARCHAR(50)
    
    );
drop table dept; 
INSERT INTO dept VALUES (101,"english"),(102,"IT");
#check for cacading
update dept set id=103 where id=102;
select * from dept;

drop table teacher;
CREATE TABLE teacher(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id int ,
    foreign key (dept_id) references dept(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
    );
    
insert into teacher values (101,"adam",101),(102,"eve",102); 
select * from teacher; 

#alter command only student table dept and teacher are droppped here
ALTER TABLE student ADD COLUMN age int;
ALTER TABLE student drop COLUMN age;
select * from student;

#alter command
ALTER TABLE student ADD COLUMN age int not null default 19; 
ALTER TABLE student modify age varchar(2);
insert into student(rollno,name,marks,age) values(107,"bob",68,100);
ALTER TABLE student change age stu_age int;
insert into student(rollno,name,marks,stu_age) values(107,"bob",68,100);
ALTER TABLE student drop column stu_age;
alter table student rename stu;-- havent runned as name would be changed
truncate table student;-- havent runned as data would be deleted
select * from student;

#practice question
#1 change column name to full name
alter table student change name full_name varchar(20);
select *from student;

#2 delete all the student who scored marks less than 80
delete from student where marks<80;
select *from student;

#3 delete the column for grades;
alter table student drop column grade;
select *from student;







 