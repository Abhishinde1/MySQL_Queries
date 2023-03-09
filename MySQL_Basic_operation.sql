use myserver;

create table empdetails(
empid int,
empname varchar (40),
age int,
address varchar(40),
salary int
);

insert into empdetails(empid,empname,age,address,salary)
values(1,"Akshay",22,"pune",10000),
       (2,"Abhi",20,"Mumbai",20000),
		(3,"Yash",21,"Thane",30000),
		(4,"Yogesh",23,"Nagar",40000),
		(5,"Sahil",25,"Delhi",50000);
        
        
desc empdetails;

-- it will print the starting the 2 data
select * from empdetails
limit 2;
        
-- Inner Query
-- 2st highest salary

select max(salary)
from empdetails
			where salary < (select max(salary)
from empdetails);

-- 3rd highest salary

select max(salary)
from empdetails where salary < 
(select max(salary) from empdetails where salary < 
(select max(salary) from empdetails));


-- 4th highest salary
select max(salary)
from empdetails where salary < 
(select max(salary) from empdetails where salary < 
(select max(salary) from empdetails where salary < 
(select max(salary) from empdetails)));


-- operators 
-- or operater
select * from empdetails 
where empid = 2 or empid = 3;

-- between operator
select * from empdetails 
where empid between  1 and 3;

-- aggregates methods
-- avg aggregate

select avg(empid)
from empdetails;

select max(empid)
from empdetails;

select min(empid)
from empdetails;


