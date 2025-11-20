-- Practical - 6 -

-- Practical - 6 a.
drop database college;
create database college;
create table college.info(
College_ID INT NOT NULL,
College_Code VARCHAR(20) NOT NULL,
College_Name VARCHAR(50));

Select * from college.info;

insert into college.info values(null,'SIESUMDS','SIES');

insert into college.info values(1,'SIESUMDS','SIES');

alter table college.info add constraint  unique (College_ID);

insert into college.info values(2,'SIESUMDS','SIES');

-- Practical - 6 b.

drop database product;
create database product;
create table product.customers(
    ID int NOT NULL primary key,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);

insert into product.customers values
(1,'Smiti','Badugu',20),
(2,'Anshika','Chauhan',19),
(3,'Ram','Man',22),
(4,'Rakesh','Reddy',26);

create table product.orders(
Order_ID int  NOT NULL primary key,
Order_Code varchar(20) NOT NULL,
Order_Name varchar(50),
Customer_ID int,
foreign key (Customer_ID) references product.customers(ID)
);

insert into product.orders values
(1,'Smiti','ORDS1',2),
(2,'Ram','ORDS2',2),
(3,'Anshika','ORDS3',3);

alter table product.orders add column Amount int check(amount>=200);
update product.orders set amount = 20 where Order_ID = 3;

update product.orders set amount = 209 where Order_ID = 2;