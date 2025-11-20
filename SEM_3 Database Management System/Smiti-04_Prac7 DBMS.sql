drop database college;
create database college;
create table college.books(
    Book_ID int NOT NULL primary key,
    Title varchar(255) NOT NULL,
    Author varchar(255),
    Price int,
    Stock int
);

insert into college.books values
(1,'11 Golden Rules','George Orwell',199,50),
(12,'1984','George Orwell',199,30),
(133,'The Great Gatsby','F.Scott Fitzgerald',299,20),
(131,'The Lion King','Walter Disney',499,80),
(147,'Jungle Book','Disney',399,90);

select * from college.books where Price=399;

-- AND Operator.
select * from college.books where Price>=399 and Stock>30;
-- OR Operator.
select* from college.books where Price>=399 or Stock>30;
-- NOT Operator.
select* from college.books where NOT Price>=399;
-- AND & OR Operator.
select * from college.books where (Price>=399 and Stock>30) OR Stock=50;

-- BETWEEN:
select* from college.books where Book_ID BETWEEN 1 and 20;
-- LIKE:
select* from college.books where Author like 'D%';
select* from college.books where Author like 'W%';
select* from college.books where Author like '%Y';
select* from college.books where Author like 'G%L';

-- IN:
select* from college.books where Book_ID IN (1,2,12,122,147);

select* from college.books;
select Title, avg(Price) from college.books group by Title;
select Title, avg(Price) As Average_Price from college.books group by Title having Average_Price>399;
