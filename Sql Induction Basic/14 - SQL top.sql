--to use the DATABASE i.e. SqlInduction
use SqlInduction;

--To display all the records with high to low Salaries.
select * from Employee order by salary desc;

--To print the details of the top 3 highest paid employees.
select * from(
select *,(dense_Rank() over (order by salary desc)) as Ranks from employee
)as temp where temp.Ranks<=3;


-- to print the details of the second highest paid employees.
select  * from Employee  where salary not in (
	select MAX(salary) from Employee
) 
and Salary in(
	select top 2 (Salary) from Employee order by Salary desc
);

--another query to print the details of the second highest paid employees.
select * from(
select *,(dense_Rank() over (order by salary desc)) as Ranks from Employee
)as temp where temp.Ranks=2;

--to print the details of the third highest paid employees.
select  * from Employee  where salary not in --to exclude the top 2 paid salaries
(
	select top 2 (Salary) from Employee order by Salary desc
) 
and Salary in(
	select top 3 salary from Employee   group by salary order by salary desc
);

--another query to print the details of the third highest paid employees.
select * from(
select *,(dense_Rank() over (order by salary desc)) as Ranks from Employee
)as temp where temp.Ranks=3;
