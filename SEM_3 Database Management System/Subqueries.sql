drop database Company;
create database Company;
create table Company.customer (
	Customer_ID int PRIMARY KEY,
    Name varchar(50),
    Age int,
    City varchar(50),
    Occupation varchar(50)
);

insert into Company.customer(Customer_ID,Name,Age,City,Occupation)
values(1, 'Smiti', '20', 'Mumbai', 'Doctor'),
(2, 'Ram', '22', 'Indore', 'Professor'),
(3, 'Rakesh', '26', 'Banda', 'Developer'),
(4, 'Riya', '20', 'Delhi', 'Admin'),
(5, 'Kripa', '28', 'Satna', 'Painter');

select * from Company.customer;

create table Company.orders (
	Order_ID int primary key,
    Customer_ID int,
    Product_name varchar(50),
    Order_Date date
);
    
insert into Company.orders(Order_ID,Customer_ID,Product_name,Order_Date)
values(101, 1, 'laptop', '2021-12-23'),
(102, 2, 'IPhone', '2022-3-12'),
(103, 2, 'TV', '2021-4-6'),
(104, 3, 'Shoes', '2021-12-12'),
(105, 1, 'Airdopes', '2021-12-3');

select * from Company.orders;

use Company;
select Name,Occupation from customer where exists (select * from orders where customer.Customer_ID=orders.Customer_ID);

select Name,City from customer where Customer_ID IN (select Customer_ID orders where Customer_ID=1);