use SqlInduction;

select CASE WHEN (GROUPING(e.fname) = 1) THEN 'ALL'
            ELSE ISNULL(e.fname, 'UNKNOWN')
       END AS Name,
       CASE WHEN (GROUPING(d.name) = 1) THEN 'ALL'
            ELSE ISNULL(d.name, 'UNKNOWN')
       END AS Designation,
	   sum(e.salary) as Salary from employee e,designation d where d.id=e.designation group by  d.name,e.fname with rollup ;

select 
       CASE WHEN (GROUPING(d.name) = 1) THEN 'ALL'
            ELSE ISNULL(d.name, 'UNKNOWN')
       END AS Designation,
	   sum(e.salary) as Salary from employee e,designation d where d.id=e.designation group by  d.name with cube ;


