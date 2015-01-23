use SqlInduction;

select id, (fname + ' ' + lname) as Name, salary, (select sum(salary) from employee e2 where e2.id<= e1.id) as RunningTOtal from employee e1;

select id, (fname + ' ' + lname) as Name, salary, salary + IsNull(Lag(salary) over(order by id),0) as RunningTOtal from employee e1;