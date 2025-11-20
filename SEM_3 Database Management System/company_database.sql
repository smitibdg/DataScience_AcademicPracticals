use company;
create table company_emp(
EmpID int primary key,
Name varchar(50),
Country varchar(50),
Age int(2),
Salary int(10));
-- insert some sample data into the customers table
insert into company_emp (EmpID, Name, Country, Age, Salary)
values(1, 'Smiti', 'India', '20', '30000'),
(2, 'Ram', 'United States', '22','45000'),
(3, 'Rakesh', 'Sri Lanka', '26', '40000'),
(4, 'RIya', 'Germany', '23', '48000'),
(5, 'Kripa', 'Italy', '28', '50000');

select * from company_Emp;

select * from company_emp where Salary between 20000 and 50000;

select * from company_emp where Age between 20 and 50000;

select * from comapny_emp where Age between '25' and '30';

select * from comapny_emp where Salary not between 30000 and 45000;