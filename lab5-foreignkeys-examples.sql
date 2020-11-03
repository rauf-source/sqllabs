--foreign keys also only allows which keys actually exist
--for example in order we have a foreign key of customers and you add a customer that does not exist in the table
--if you applied fk correctly it won't be added
create table tbl_customers(id int primary key, names varchar(10))
--we have to add another table during table creation for foreign key
--that table alos has to have the same data type as the primary key of the refered table
create table tbl_order(o_id int primary key, Product_name varchar(10), c_id int foreign key references tbl_customers(id))
--you can also not delete a customer which has an id as foreign key in other table
--to delete we have 3 options
--delete all orders against the customer
--add a default value for that
--null
--on orders
--option 1 cascading deleting all the childs [go to keys, foreqign key and double click... delete rule {cdascade}
--option 2.... null. will not delete the childs but place null in the place of fk
--option 3.... default
delete from tbl_customers where id =2

insert into tbl_customers values(1,'Ali')
insert into tbl_customers values(2,'Brother')
insert into tbl_customers values(3,'Elon')
insert into tbl_customers values(4,'Corona')
insert into tbl_customers values(5,'h1n1')

insert into tbl_order values(11, 'cake',1)
insert into tbl_order values(3, 'pizza',2)
insert into tbl_order values(33, 'cake',4)

select * from tbl_order
select * from tbl_customers