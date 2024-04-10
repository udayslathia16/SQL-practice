CREATE database company;

CREATE table XYZ(
	id INT PRIMARY KEY,
    name varchar(50),
    salary INT NOT NULL
);

INSERT INTO XYZ(id,name,salary) VALUES
(1,"adam",25000),
(2,"bob",30000),
(3,"casey",40000);

SELECT * FROM XYZ;
