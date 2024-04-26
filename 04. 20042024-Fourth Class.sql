use etl1;

select * from emp13;

-- Show the fname and lname of employees which are female
select fname, lname, gender from emp13
where gender='F';

-- Show the details of employees which are male and having salary>80
select fname, lname, gender,salary from emp13
where gender='M'
and salary>80;

-- Show the details of employees having id 2,3,5,7,8
select * from emp13
where id in (2,3,5,7,8);

-- Show the details of employees having salary between 50 to 70
select * from emp13
where salary between 50 and 70;

-- Add details of Ram Prasad earning 75 at id 11
insert into emp13
values(11,'Ram','Prasad',75,'M');

-- Add details of Gauri Sharma to the table without gender and id
insert into emp13(fname,lname)
values('Gauri','Sharma');

-- Add details of karan to the table without gender and id earning 70
insert into emp13(fname,salary)
values('Karan',70);

-- Show the details of employees having a in their first name
select * from emp13
where upper(fname) like '%A%';

-- Show the details of employees having u in their first name at third position
select * from emp13
where upper(fname) like '__U%';

-- Show the details of employees having t at second last position of their name
select * from emp13
where upper(fname) like '%T_';

/**************** INTRODUCTION TO DELETE CLAUSE *******************/
delete from emp13
where fname='Karan';

delete from emp13
where fname in ('Gauri','Ram');

delete from emp where 1=1;
select * from emp;

--- Truncate can also be used to delete entire data from table
truncate emp;

/**************** INTRODUCTION TO DROP CLAUSE *******************/
drop table emp;
select * from emp;

/**************** INTRODUCTION TO ALTER CLAUSE *******************/
create table emp as select * from emp_bkp;
select * from emp;

alter table emp add column location varchar(30);
alter table emp add column pincode varchar(30);

/**************** INTRODUCTION TO MODIFY CLAUSE *******************/
alter table emp modify column pincode int;

-- drop column
alter table emp drop column location;
alter table emp drop column pincode;

-- update
-- Change the fname of id 1 to Harsh
update emp13 set fname='Harsh'
where id=1;

-- Change the Salary of id 1 and 9 to 77
update emp13 set Salary=77
where id in (1,9);

-- Change the lname of joshi to ghosh
update emp13 set lname='Ghosh'
where lname='Joshi';

/******* Questions ***********/

-- Add locaiton column
alter table emp13 add location varchar(30);

-- update locaiton of all female employees to 'Vashi'
update emp13 set location='Vashi'
where Gender='F';

select * from emp13;

-- update locaiton of id 1 to 'Belapur'
update emp13 set location='Belapur'
where id=1;

-- remove the column location
alter table emp13 drop location;


/**************** INTRODUCTION TO LIMIT CLAUSE *******************/

-- select first 3 rows from table
select * from emp13
limit 3;

-- Offset means it will skip those many rows and then consider limit starting the result returned after applying offset
select * from emp13
limit 1 offset 1;

-- syntax is limit offset, limit_num. Here it is not considering first 3 rows because of offset and then giving us next two rows as output.
select * from emp13
limit 3,2;

-- Show the fname and lname of 4th and 5th row
select fname,lname
from emp13
limit 2 offset 3;

-- Show the details of 7th 8th and 9th row
select *
from emp13
limit 3 offset 6;

-- Show details of first two females
select * from emp13
where gender = 'F'
limit 2;  

/**************** INTRODUCTION TO ORDER BY CLAUSE *******************/

select salary from emp13
order by salary;

-- Show the details of employees according to their id in decreasing order
select * 
from emp13
order by id desc;

-- Show the fname and lname of employees according to their salary in decreasing order
select 
	fname, lname, salary 
from emp13
order by salary desc;

-- show the details of highest paid employee
select *
from emp13
order by salary desc
limit 1;

-- show the details of top 3 highest paid employee
select *
from emp13
order by salary desc
limit 3;

-- show the details of 3rd highest paid employee
select *
from emp13
order by salary desc
limit 1 offset 2;

-- show the details of 2nd lowest paid employee
select *
from emp13
order by salary
limit 1 offset 1;

-- show the details of highest paid female employee
select *
from emp13
where gender='F'
order by salary desc
limit 1;

-- show the details of highest paid male employee
select *
from emp13
where gender='M'
order by salary desc
limit 1;

-- show the fname and salary of 2nd highest paid female employee
select *
from emp13
where gender='F'
order by salary desc
limit 1 offset 1;

-- show the fname and salary of 2nd lowest paid female employee
select *
from emp13
where gender='F'
order by salary 
limit 1 offset 1;

-- Who has the highest salary amongst id 2,3,4,6,7
select *
from emp13
where id in (2,3,4,6,7)
order by salary desc
limit 1;

/**************** INTRODUCTION TO Aggregate  *******************/
-- show the highest salary among all employees
select max(Salary) as Max_sal
from emp13;

-- select avg sal of all emp
select avg(Salary) as Avg_sal
from emp13;

-- Show the total of salary of all emp
select Sum(Salary) as Total_sal
from emp13;

-- show the lowest salary among all employees
select min(Salary) as Min_sal
from emp13;

-- Below query counts Nulls as well
select count(4) -- 4 shows the index number of column
from emp; -- 10

-- Here only non null values are counted
select count(salary)
from emp; -- 8

select * from emp;

/**************** INTRODUCTION TO ALIAS  *******************/

select salary, salary/2 as half_salary from emp13;

select salary, salary*2 as double_sal from emp13;




