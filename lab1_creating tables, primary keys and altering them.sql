--SELECT each line[either with mouse and select or shift + arrow keys and then execute [press F5]
--create a new database
create database newdatabase;
--select the database or run the following command
use newdatabase;
--create a new table
create table users (id int, fname varchar(255), lname varchar(255), phone float)
--insert values intto a table
insert into users values(2,'farah','jones',213.2);
--shows all the users
select * from users;
--//[adding tables with primary keys - way one[defining them with the table definition]
create table products (id int not null primary key, productname varchar(255) )
insert into products values(1, 'soap')
insert into products (productname, id) values('chocolate',2)
--//[changing tables when you mistakenly didn't add primary key keywords while making the table]
--alterting to make sure that our attribute/column is not null
alter table users alter column id int not null
--altering table column to add primary key into the column of id
alter table users add constraint pk_users_id primary key (id)
