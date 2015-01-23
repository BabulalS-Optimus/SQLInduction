-- to use the SQLInduction DataBase.
use SqlInduction;

-- Run this query to find the details of the employees with top 3 paid salaries.
select * from(
select *,(dense_Rank() over (order by salary desc)) as Ranks from Employee
)as temp where temp.Ranks<=3 order by id asc;

