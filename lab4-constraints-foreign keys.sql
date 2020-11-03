select * from employees
--when user does not enter does not enter data. for some values
--it its automatically null. 
insert into mytable (pid, fname) values(46,'rand2yo');
--so before you run insert you can add this default constraint 
--now when the user does not insert a value for country there is a default constraint 
alter table mytable
add constraint de_product_name
default 'unKnown' for country
--adding constraint for checking stuff
alter table mytable 
add constraint check_pid
check ( pid < 100)
---when adding foreing keys
--a customer can place many orders... place foreign key on orders{the many sidE}
--foreign key id is applied on mytable
alter table mytable
add constraint fk_id
foreign key(id) references tbl_student(id)--foreign key id is applied and table is tbl_student (id)
--hospital management system
--tblPatient
--tblDoctor
--tblReceptionist
--tblWard
--tblAppointment