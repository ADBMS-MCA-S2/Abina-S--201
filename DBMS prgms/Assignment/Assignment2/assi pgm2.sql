create database employees;
use employees;
create table employee(
E_id int not null,
E_name varchar (25) not null,
Age int not null,
Salary int not null
);
insert into employee(E_id,E_name,Age,Salary)values(101,"Anu",22,9000);
insert into employee(E_id,E_name,Age,Salary)values(102,"Shane",29,8000);
insert into employee(E_id,E_name,Age,Salary)values(103,"Rohan",34,6000);
insert into employee(E_id,E_name,Age,Salary)values(104,"Scott",44,10000);
insert into employee(E_id,E_name,Age,Salary)values(105,"Tiger",35,8000);
insert into employee(E_id,E_name,Age,Salary)values(106,"Alex",27,7000);
insert into employee(E_id,E_name,Age,Salary)values(107,"Abhi",29,8000);

select * from employee;

select count(E_name) from employee;

select max(Age) from employee;

select min(Age) from employee;

select sum(Age) from employee;

select avg(Age) from employee;

create view a_ge as
select age from  employee;

select * from a_ge;

select salary from employee
group by salary;

select salary from employee
order by salary asc;

select salary from employee
order by salary desc;
