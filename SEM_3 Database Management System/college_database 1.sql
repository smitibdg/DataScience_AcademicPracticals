create database college
create table college.student(
student_Iid int,
Name varchar(100),
Age int);

use college
alter table student add(
address varchar(200)
);

-- adding column with default value
alter table college.student
add dod date default (current_timestamp);

-- modify table
alter table college.student modify
address varchar(300);

-- alter comments (rename an existing column)
-- renaming address column to location
alter table college.student
rename column address to location

-- to remove a column
alter  table college.student drop location;

-- truncate command will remove all the records from the table but the structure of the table remains.
truncate table college.student;

-- remove command used to set a new name to existing table
use college;
rename table student to student_info;

-- drop command completely removes a table from the database and destroys the table structure 
drop table student_info;

-- to delete the whole database
drop database college;


-- creating the database again
create database college
-- creating columns of name, age and student id
create table college.student(
student_id int,
Name varchar(100),
Age int);
-- to insert the values use insert command
insert into college.student values(01, 'Smiti', 20);

-- to insert values to specific column use insert into command
insert into college.student(student_id,name,age) values(02, 'Ram', 22);
insert into college.student(student_id,name,age) values(03, 'Rakesh', 24);

-- to make roll number as primary key use add primary key command
alter table college.student
add primary key(student_id);

-- to update any record of data use update command
update college.student set age=18 where student_id=2;

-- updating multiple columns
update college.student set name='Kavya', age=21 where student_id=03;

-- performing simply calculations using update command
update college.student set age=age+1 where student_id=03;

-- to delete a particular record use delete from command
delete from college.student where student_id=03;

-- 
-- to temporarily save a transaction so the you can rollback to that point whenever required use savepoint command

-- displaying all the records of the table
select student_id, name, age from college.student;

insert  into college.student values(06, 'Raj', 19);
-- to save permanently any record use commit command
commit;
update college.student set name='Riya', age=23 where student_id=06;
-- 
rollback;

-- to set a condition, use where clause
select * from college.student where name='Riya';

-- performing simple calculations usig slect query
select student_id, name, age+3 from college.student;

-- displaying a particular record 
select student_id,
name,
age 
from college.student where student_id=01;