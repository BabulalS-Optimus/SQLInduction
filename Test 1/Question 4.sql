--Run this to add the database i.e SqlTest
use SqlTest;

--Answer to the question : 4 i.e. [ Employee ID, Employee Names with gross salary more than 15000 ]
--NOTE : Gross Salary = ( BASIC + HR + DA - TAX )
select
	ID as Employee_ID,
	Name as Name_of_Employee
from Employee 
where
([Basic]+HR+DA-TAX) > 15000;