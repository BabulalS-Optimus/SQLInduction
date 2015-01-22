use SqlInduction;


select top 3 * from (
	select distinct top 3 * from employee order by salary desc
) a order by id asc;


