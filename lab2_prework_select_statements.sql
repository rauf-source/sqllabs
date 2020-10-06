--pre work lab 2 select statements
----to show every thing in the tables
select * from users
----to show specific fields from the table
select fname, lname from users
----to show distinct or with unique values e.g if one name appers more than one time then only one will entry will be returned
select distinct fname from users
----counts the distinct values
select count(distinct fname) from users
----WHERE 
--SELECT column1, column2, ...FROM table_name WHERE condition;
select fname, lname from users where id!=2
--and not or
----and
select fname,id, phone from users where phone >3 and id>3
----or
select * from users where phone=2 or id>2
----not
select * from users where not fname = 'abdul'
----
select * from users group by fname