use SqlInduction;

select * from employee e1 where e1.salary < (select min(salary) from employee) ;

select * from employee e1 where e1.salary > (select min(salary) from employee) ;