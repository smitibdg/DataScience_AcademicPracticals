drop database company;
create database company;
create table company.Employees(
    Emp_ID int auto_increment primary key,
    Emp_Name varchar(50) not null,
    Pay_Scale integer not null,
    Basic_Pay integer check(basic_pay>8000),
    Net_Pay integer,
    Gross_Pay integer);

insert into company.Employees (Emp_Name, Pay_Scale, Basic_Pay, Net_Pay, Gross_Pay) values
('John Doe', 1, 8500, 12000, 15000),
('Jane Smith', 2, 9000, 13000, 16000),
('Alice Johnson', 1, 8700, 12500, 15500),
('Bob Brown', 3, 9500, 14000, 17000),
('Charlie Davis', 2, 8800, 12800, 15800),
('Diana Evans', 1, 9200, 13500, 16500),
('Eric Wilson', 3, 9700, 14500, 17500),
('Fiona Lee', 2, 8900, 13000, 16000),
('George Martinez', 1, 8800, 12700, 15700),
('Hannah Clark', 3, 9600, 14200, 17200),
('Adam smith ', 1, 11500, 12000, 15000);
select Emp_ID as Employee_ID,Emp_Name as "Employee Name", Pay_Scale as "PAY_SCALE", Basic_Pay as "BASIC_PAY", Net_Pay, Gross_Pay from company.Employees;