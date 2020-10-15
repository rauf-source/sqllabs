--having statememnt
-- not much difference
--fwgh
--after groupby you want to do filtration
select sum(salary) as total_salary , city, gender from employees
group by city, gender
---but after groupby i want to filter
select sum(salary) as total_salary , city, gender from employees
group by city, gender
having gender = 'MaLe'
order by city desc--order by is applied at end
---/i\ does not work like where without groupby
--sessionals syllabus
--pk, unique
--alter
--group by, having
-- in short {lab1, lab2, lab3}