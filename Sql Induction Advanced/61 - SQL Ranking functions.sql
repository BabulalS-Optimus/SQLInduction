use SqlInduction;

select salary from employee order by salary desc;

select top 5 salary from employee order by salary desc;

select top 5 salary from(
select  salary, ROW_NUMBER() over (order by salary desc) as row
	from (select distinct salary from employee)  innertable
	
	)outertable where row%2=1;

select top 5 salary from(
select  salary, DENSE_RANK() over (order by salary desc) as row
	from (select distinct salary from employee)  innertable
	
	)outertable where row%2=1;

