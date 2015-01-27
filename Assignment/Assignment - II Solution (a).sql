--to use the database i.e. SqlInduction
use SqlInduction;

--query to the solution for assignment II Part (a) i.e. to show Full name and DOB of the employee whose DOB falls in the day of the month.
--NOTE: With the default data, it will not show any results as there is no employee having DOB as last day of the month in that year of his birth.
--HELP: To test, please insert a new record in [t_emp] table.

select 
	(ISNULL(Emp_f_name,' ') + ' ' + ISNULL(Emp_m_name,'') + ' ' + ISNULL(Emp_l_name,' ')) as Full_Name,
	FORMAT(Emp_DOB,'dd-MM-yyyy') as Date_Of_Birth
from
	t_emp
where
	DAY(DATEADD(d,1,Emp_DOB)) = 1
order by Full_Name;
