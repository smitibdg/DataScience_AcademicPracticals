drop database Company;
-- A. operations with joins
create database Company;
create table Company.customer (
	Customer_ID int PRIMARY KEY,
    Name varchar(50),
    Age int,
    City varchar(50),
    Occupation varchar(50)
);

insert into Company.customer(Customer_ID,Name,Age,City,Occupation)values
(1, 'Smiti', '20', 'Mumbai', 'Doctor'),
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
(102, 5, 'IPhone', '2022-3-12'),
(103, 4, 'TV', '2021-4-6'),
(104, 3, 'Shoes', '2021-12-12'),
(105, 2, 'Airdopes', '2021-12-3');
select * from Company.orders;

-- inner join
use company;
select Order_ID, Product_name from orders inner join customer on orders.Customer_ID = customer.Customer_ID;

-- left join
use Company;
select customer.Name, orders.Order_ID from customer left join orders on customer.Customer_ID = orders.Customer_ID order by customer.Name;

-- right join
select orders.Order_ID, customer.Name from orders right join customer on orders.Customer_ID = customer.Customer_ID order by orders.Order_ID;

-- cross join
use Company;
select customer.name, orders.Order_ID from customer cross join orders using(Customer_ID) where Order_ID= 101 or Order_ID = 102;

-- B. MYSQL Aliases.
-- alias table
use Company;
select Customer_ID as Customer_ID, Name as customer from customer;

select o.Order_ID,o.Order_Date,c.name from customer as c, orders as o where c.Name = "Riya" and c.Customer_ID = o.Customer_ID;
