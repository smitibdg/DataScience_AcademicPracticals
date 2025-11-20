drop database sies;
-- Practical 3
-- creating a database
create database sies;
-- createing a table inside database
create table sies.college(
Roll_no int,
Name varchar(50),
Age int
);
-- viewing all databases
show databases;
-- viewing all tables in a database
use sies;
show tables;

-- Practical 4 (5 DDL Commands)
-- creating a table
create table sies.fruits(
Apple varchar(10),
Mosambi varchar(20),
Banana varchar(10),
Orange varchar (30),
Pomogranate varchar(20),
watermelon varchar(40)
);
-- alter table:
-- 1. add a column (can also add multiple columns in a table at once)
alter table sies.fruits add (Chikoo varchar(10));
-- 2. rename a column
alter table sies.fruits rename column Orange to Papaya;
alter table sies.fruits rename column watermelon to Watermelon;
-- 3. modify a column (modifies its data type (size of the varchar))
alter table sies.fruits modify column Watermelon varchar (30);
-- 4. drop a column (destroys a specifies column)
alter table sies.fruits drop Pomogranate;

-- truncate command (destroys data from inside the table(its pimary key re-initialises))
truncate table sies.fruits;

-- drop command (destroys the whole table)
drop table sies.fruits;

-- Practical 5 (4 DML Commands)
-- 1. insert command
insert into sies.college (Roll_no, Name, Age) values 
(1, "Smiti", 20);
(2, "Ram", 22);
(3, "Kripa");
(4, "Kavya", 19);
-- 2. update command
-- updating age
update table sies.college set Age=23 where Roll_no=2;
-- updating(adding age)
update table sies.college set Age=26 where Roll_no=3;
-- updating multiple columns data at once
update table sies.college set Name=Deepika, Age=24 where Roll_no=4;
-- incrementing integer value(all columns)
update table sies.college set Age=Age+1;
update table sies.college set Age=Age+1 where Roll_no=4;

-- 3. delete command (only deletes all rows from the table)
-- deleting a single record
delete from sies.college where Roll_no=3;
-- deleting all records from a table
delete from sies.college;

-- Practical 6
-- a.
create table sies.info(
College_ID int NOT NULL,
College_code varchar(20) NOT NULL,
College_name varchar(20)
);
select * from sies.info;
insert into sies.info values 
(null, "SIESUMDS", "SIES");
(1, "SIESUMDS", "SIES");

alter table sies.info add constraint unique(College_ID);
insert into sies.info values (2, "SIESUMDS", "SIES");

-- Practical 7
create table sies.product(
Product_ID int NOT NULL primary key,
Name varchar(20),
Price int,
Stock int
);
insert into sies.product values
(1, "Milk", 25, 15);
(2, "Butter", 18, 30);
(3, "Jam", 20, 30);
(4, "Bread", 28, 15);
(5, "Cheese", 18, 30);
-- where operators
select * from sies.product where Price=18;
-- where with keywords and logical operators
-- 1. and operator
select * from sies.product where Price>=18 and Stock>15;
-- 2. or operator
select * from sies.product where Price>=18 or Stock>15;
-- 3. not operator
select * from sies.product where NOT Price>=18;
-- 4. and and or operator
select * from sies.product where (Price>=18 and Stock>15) or Stock=30;
-- where with keywords
-- 1. between keyword
select * from sies.product where Product_ID between 1 and 3;
-- 2. like keyword
-- first letter key
select * from sies.product where Name like 'B%';
-- last letter key
select * from sies.product where Name like '%d';
-- both fisrt and last letter key
select * from sies.product where Name like 'B%d';
-- 3. in keyword
select * from sies.product where Product_ID IN (2,3,4,6,9);
-- aggregate functions
-- group_by
select Name, avg(Price) from sies.product group by Name;
-- have clause
select Name, avg(Price) as Average_Price from sies.product group by Name having Average_Price>18;

-- Practical 8
-- in clause
select Name, City from company.customers where customer_ID IN (select customer_ID orders where customer_ID=1);
-- exists clause
select Name, Occupation from company.customers where exists (select * from orders where company.customer_ID=orders.customer_ID);

-- Practical 9
-- Joins
-- 1. Inner Join
select Order_ID, Product_name from orders inner join customer on orders.Customer_ID = customer.Customer_ID;
-- 2. Left Join
select customer.Name, orders.Order_ID from customers left join orders on customer.Customer_ID=orders.Customer_ID order by customer.Name;
-- 3. Right Join
select orders.Order_ID, customer.Name from orders right join customer on orders.Customer_ID=customer.Customer_ID order by orders.Order_ID;
-- 4. Cross Join
select select customer.Name, orders.Order_ID from customers cross join orders using(customer_ID) where order_ID=101 or order_ID=102;
-- alias table(changes names of the tables)
select Customer_ID as Customer_ID, Name as customer from company.customer;

-- Practical 10
select Emp_ID as Employee_ID,Emp_Name as "Employee Name", Pay_Scale as "PAY_SCALE", Basic_Pay as "BASIC_PAY", Net_Pay, Gross_Pay from company.Employees;