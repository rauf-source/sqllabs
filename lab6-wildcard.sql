--wild cards
--IN
select * from orders where EmployeeID In (3,4,5,6)
--between
select * from orders where EmployeeID between 3 and 10
--like
select * from orders where ShipName like 'H%'
---to limit number of characters
select * from orders where ShipCity like '_____'
----square operator []
----to be used when a key word is used as a column, table name
select [name] from orders
---- in like statement
select * from orders where ShipName like '[abc]%'--starting with a or b or c 
------- ^ in like... plays the role of negation
select * FROM orders where ShipCity like '[^abc]%'  --first character cant be a b or c

select * from orders where ShipName like 
select * from employees where email like '%@%.com'