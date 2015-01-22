use SqlInduction;

select * from employee e1 where e1.salary < (select max(salary) from employee) ;