CREATE DATABASE college;
drop database college;
USE college;
drop table student;
CREATE TABLE student(
	id INT PRIMARY KEY,
    name VARCHAR(50)
   
    );
    
insert into student values (101,"adam"),(102,"bob"),(103,"casey");
select * from student;

CREATE TABLE course(
	id INT PRIMARY KEY,
    course VARCHAR(50)
   
    );
    
insert into course values (102,"english"),(105,"math"),(103,"science"),(107,"CS");
select * from course;

#inner join
select * from student inner join course on student.id=course.id;

#left join
select * from student left join course on student.id=course.id;

#right join
select * from student right join course on student.id=course.id;

#full join
select * from student left join course on student.id=course.id 
UNION
select * from student right join course on student.id=course.id;

#left exclusive join
select * from student left join course on student.id=course.id
where course.id is null;

#right exclusive join
select * from student right join course on student.id=course.id
where student.id is null;

#full exclusive join
-- select * from student as a left join course as b on a.id=b.id 
-- UNION
-- select * from student as a right join course as b on a.id=b.id
-- where a.id and b.id is null;

select * from student left join course on student.id=course.id
where course.id is null
union
select * from student right join course on student.id=course.id
where student.id is null;




    
