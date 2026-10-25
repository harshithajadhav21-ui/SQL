CREATE database Mydb;
show databases;
DROP database Mydb;
CREATE database Student;
show databases;
USE Student;
 CREATE table Student (s_id int, sname varchar(20) , city varchar(20));
INSERT into Student (s_id,sname,city) values (1,xyz);
 CREATE table Students (s_id int, sname varchar(20) , city varchar(20));
 INSERT INTO Students(s_id,sname,city)VALUES(101,'harsh', 'pune'),
 (102,'abc','xyz'), 
 (103,'qrs','sangli'); 
 SELECT * from Students;
 CREATE DATABASE Hospital;
 CREATE TABLE Hospital (hospital_id INT , hospital_name VARCHAR(50), city VARCHAR(30));
 INSERT INTO Hospital
(hospital_id, hospital_name, city)
VALUES
(101, 'City Hospital', 'Pune'),
(102, 'Apollo Hospital', 'Mumbai'),
(103, 'Sunrise Hospital', 'Nashik');
select * from Hospital;
 delete from Hospital WHERE hospital_id=101;
 select * from Hospital;
CREATE DATABASE stud;
USE stud;
CREATE TABLE stud (stud_id int , studname varchar(20));
INSERT INTO stud (stud_id , studname) VALUES (101,'harsh');
select *from stud;
DELETE FROM stud WHERE stud_id=101;
CREATE table emp(e_id int primary key auto_increment,name varchar(20));
INSERT into emp(name)values('abc'),('xyz'),('pqr');
select * from emp;
SET sql_safe_updates=0;
DELETE FROM emp;
describe emp;
INSERT into emp(name)values('abc'),('xyz'),('pqr');
select *from emp;
truncate table  emp;
describe emp;
INSERT into emp(name)values('abc'),('xyz'),('pqr');
select *from emp;
CREATE TABLE stud01 (stud_id int ,studname varchar(20));
insert into stud01 (stud_id,studname)values (101,'abc');
CREATE TABLE stud02(stud_id int ,studname varchar(20));
INSERT INTO stud02 SELECT * FROM stud01;
select *from stud02;


-- EMPLOYEE TABLE
CREATE database employee;
USE employee;

DROP table employee;
CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    salary INT,
    department VARCHAR(100),
    designation VARCHAR(20)
);
INSERT INTO employee
(emp_id, first_name, last_name, salary, department, designation)
VALUES
(101, 'Harsh', 'Jadhav', 50000, 'IT', 'Developer'),
(102, 'Amar', 'Patil', 45000, 'HR', 'Manager'),
(103, 'Priya', 'Sharma', 55000, 'Finance', 'Accountant'),
(104, 'Amit', 'Kumar', 48000, 'IT', 'Tester'),
(105, 'Sneha', 'Joshi', 60000, 'Marketing', 'Executive'),
(106, 'Rohan', 'Singh', 52000, 'Sales', 'Sales Executive'),
(107, 'Neha', 'Verma', 47000, 'HR', 'Recruiter'),
(108, 'Ankit', 'Gupta', 65000, 'IT', 'Team Lead'),
(109, 'Pooja', 'Desai', 53000, 'Finance', 'Analyst'),
(110, 'Karan', 'Mehta', 58000, 'Operations', 'Supervisor');
select * from employee;
ALTER TABLE employee add column city varchar(50);
select * from employee;
ALTER TABLE employee MODIFY designation  varchar(100);
select * from employee;
ALTER TABLE employee change first_name fname varchar(20); 
select * from employee;

-- SELECT QURIES
SELECT salary , fname from employee;
SELECT salary as emp_sal from employee;

truncate stud;
-- CLAUSES
select * FROM employee where emp_id=102 AND fname='Amar';
select* from employee where emp_id=101 or emp_id=102;
-- ORDER BY CLAUSES
select *from employee order by salary ASC;
select *from employee order by salary ASC limit 5;
select *from employee order by salary DESC;
select *from employee order by salary DESC limit 1 ;
select *from employee order by salary DESC limit 1 offset 4 ;
insert into employee(fname) values ('abcd');
-- JOIN
create database STUDS;
use STUDS;
CREATE TABLE STUDS (s_id int , name varchar(20), course_id int);
INSERT INTO STUDS (s_id,name,course_id)values
(101,'amar',1001),(102,'raj',1002),(103,'roy',1003);
select*from STUDS;
USE STUDS;
SHOW TABLES;
CREATE TABLE STUDS1 ( course_id int , course_name varchar(20));
INSERT INTO STUDS1 (course_id , course_name)values
(1001,'SQL'),(1002,'JAVA'),(1003,'PYTHON');
select*from STUDS1;
SELECT * FROM STUDS INNER JOIN STUDS1 ON STUDS.course_id = STUDS1course_id;
-- KEYS
use studs;
create table student1 (id int primary key , name varchar (100),s_city varchar(100));
create table student2 (id int , marks int , course_name varchar(50), foreign key(id) references student1(id));

-- composite key



-- UNIQUE KEY
USE STUDS;
CREATE TABLE STUs (stu_id int primary key,s_name varchar(100) not null, Email varchar(200)UNIQUE,contact varchar(100) UNIQUE);
insert into stus (stu_id,s_name,Email,contact)values(101,'amar','amar@gmail.com',7618980109);
select*from stus;
-- INDEX
create table students (id int,name varchar(20));
insert into students (id,name)values (1,'a4'),(2,'a2'),(3,'a3');
select * from students;
select name  from students order by name ASC;
create index sortname on students(name asc);
show index from students;
create database books;
use books;
INSERT INTO books (title, content) VALUES
('The Alchemist', 'A young shepherd follows his dreams and discovers the meaning of life.'),
('Harry Potter', 'A young wizard discovers his magical abilities and faces many challenges.'),
('The Hobbit', 'Bilbo Baggins goes on an adventurous journey with dwarves.'),
('Pride and Prejudice', 'A story about love, family, society, and personal choices.'),
('The Great Gatsby', 'A novel about wealth, love, dreams, and the American society.'),
('Atomic Habits', 'A book about building good habits and improving yourself gradually.'),
('Wings of Fire', 'The autobiography of A. P. J. Abdul Kalam and his journey to success.'),
('Rich Dad Poor Dad', 'A book that explains financial education and different approaches to money.'),
('To Kill a Mockingbird', 'A story about justice, racism, and growing up in a small town.'),
('The Power of Now', 'A book about living in the present moment and developing awareness.');
select * from books ;
select * from books where match (title,content) against('A. P. J. Abdul Kalam');
