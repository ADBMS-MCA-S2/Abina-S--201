CREATE DATABASE Departs;
USE Departs;
CREATE TABLE Dept(
Deptno int NOT NULL,
Dname varchar(15) NOT NULL,
Loc varchar(20) NOT NULL
);

rename table dept to Department;

alter table department add column pincode int not null;

alter table department drop column pincode;

alter  table department change column Dname Dept_name varchar(15);

alter  table department modify column loc char(10);

drop table Dept;