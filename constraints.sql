CREATE TABLE temp1(
id INT unique);

insert into temp1 values(101);
insert into temp1 values(102);
insert into temp1 values(101);

CREATE TABLE emp(
id INT unique,
salary int default 25000);

insert into emp(id) values(101);
SELECT * FROM emp; 