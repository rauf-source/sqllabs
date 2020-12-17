--1 display publisher names and first 50% of the book title
select p.publisher_name, LEFT( b.title,LEN(b.title) /2) as Title from publisher p, book1 b where p.publisher_id = b.publisher_id
select * from book1 where 
--2 book id ,isbn of those books writen by  JAMES  published by Lap Lambert
select book_id, ISBN from book1 b, publisher p, author a  where p.publisher_id = b.publisher_id 
				and b.author_id = a.author_id
				and p.publisher_name = 'Lap Lambert'
				and a.author_name = 'James'
--3 id and price of those books who has the lowest price among all, writen by author whose name starts with s
select book_id, price from book1 where price  = (select min(price) from book1 )and author_id = 
	(select author_id from author where SUBSTRING(author_name, 1,1) = 'S' )
-- 4 display last 3 characters of all books with publisher id, book price < 5000
(select RIGHT(b.title, 3) as Title , b.publisher_id from book1 b where price < 5000)
-- 5 book id, title, isbn .. for any existence of p_id greater than 131
select book_id, title, isbn from book1 where  publisher_id > 131
-- 6 id and number of books by those pub who have published more than one books

(select  b.publisher_id ,count(b.publisher_id) as [no of books] from book1 b
group by publisher_id
having count(b.publisher_id) > 1)