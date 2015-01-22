use SqlInduction;

select * from employee e1 where e1.salary > (select avg(salary) from employee) ;