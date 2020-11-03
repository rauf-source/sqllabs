--you cant implement them directly {many-many relationships}
--we need to create another table which containst the foreign keys of both tables
--ONE way to implement this is
--which does not work
create table tbl_students(id int primary key, names varchar(10))
create table tbl_courses(c_id int primary key, c_name varchar(10), s_id int foreign key references tbl_students(id))

select * from tbl_students
alter table tbl_students 
add constraint fk_id
foreign key (c_id) references tbl_courses(c_id)

alter table tbl_courses 
drop column s_id

-----WE MAKE AN EXTRA TABLE FOR RELATIONSHIPS
create table tbl_student_course ( student_id_fk int foreign key references tbl_courses(c_id),
								  course_id_fk int foreign key references tbl_students(id)
								  )
insert into tbl_students values(1,'rauf')
insert into tbl_courses values(1,'dba')

insert into tbl_student_course values(1,1)