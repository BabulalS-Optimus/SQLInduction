--Run this to add the database i.e SqlTest
use SqlTest;

--Answer to the question : 5 i.e. [ Employees with second highest Basic ]
select
	ID as Employee_ID,
	NAme as Name_of_Employee
from Employee
where [Basic] <> (select MAX([Basic]) from Employee )
and 
[Basic] in (select top 2 ([Basic]) from Employee group by [Basic] order by [Basic] desc);

