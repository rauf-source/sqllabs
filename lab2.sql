----////composite primarykey
	create table samp
	(c1 integer,
	c2 varchar(30),
	c3 varchar(50),
	primary key (c1, c2));
	insert into samp values(1 , 'b', 'b')
	select * from samp;

----////unique keys/constraint
--can be applied on nullable columns
create table newtable (id int not null, fname varchar(10) unique) 
insert into newtable values(1, NULL)
insert into mytable values(4, 'jackson','4') --error
--in unique null can be only added once
select * from mytable

----//// changing in databases
--  renaming database
--sp_renamedb <dababase name> , <newdatabase name>
sp_renamedb 'db_mydatabase' , 'mydatabase'
--  remove database [you can't remove the selected/current database]
drop database testdb

----//// changing in tables
-- changing table name
sp_rename 'newtable' , 'mytable'
-- renaming a column of a table
sp_rename 'mytable.id' , 'pid'
----chaning structure
-- adding a column inside a table //add, modify, drop//= alter parameters
alter table mytable
add country varchar(10) not null --error .. because previous values by default get null and we need not null there
--solution
alter table mytable 
add country varchar(10) null
-- removing a column inside a table
alter table mytable 
drop column city
-- modifying a column inside a table
alter table mytable 
alter column pid int not null
----////droping tables
drop table tbl--can also use delete
-- truncate removes all the stored data in the table
truncate table newtable
----////changing rows
-- update
update mytable set fname = 'rauf' where pid = 2
update mytable set country = 'default'
-- delete
delete from mytable where pid = 2


----------////SELECT STATEMENT
--shows data
--has 6 keywords... you can retreive any data in the world
--keywords = [select, from , where, group by, having , order by]
--priorities of these keywords. fwghso
--sequence from, where, group by, having, select, order by
select * from mytable;
--where
select * from mytable where pid >=2 -- 1st priority from[chooses table], 2nd priority where [picks required] , select [displays all]
--order by
select * from mytable where pid >=2 
order by pid asc--desc /asc
----GROUP BY
--makes groups.. does grouping
--consider a scenario.. you want some data... db has different columns...country, city, salary, name
---you only want to see city and salary. 
create table employees (em_id int primary key ,
						emp_name varchar(10),
						salary int,
						city varchar(15),
						gender varchar(10)
						)
insert into employees values ( 29, 'max payne', 610003, 'los angeles', 'male')
--aggregate function sum , count, min, max
select sum(salary) from employees
select AVG(salary) from employees
select MIN(salary) from employees
--- it is applied between select and from..
--- they are only applied on numerical values
--- they only return one value
--GROUP BY if i want to see salaries by gender
select sum(salary) as total_salary, gender from employees
group by gender
-- group by city
select sum(salary) as total_salary , city, gender from employees
group by city, gender
--from employees...
--group by 
	-- second column comes from the table in the aggregate function
	-- aggregate functon is necessary