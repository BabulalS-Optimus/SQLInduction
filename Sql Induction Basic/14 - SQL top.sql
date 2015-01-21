
use SqlInduction;

select top 3 * from employee order by salary desc;

select top 1 * from employee  where salary not in (
	select MAX(salary) from employee
) order by salary desc;


select top 1 * from (
	select distinct top 3 * from employee order by salary desc
) a order by salary;
