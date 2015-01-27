--to use the database i.e. SqlInduction
use SqlInduction;

--query to the solution for assignment II - Part (b)

select 
	(ISNULL(Emp_f_name,' ') + ' ' + ISNULL(Emp_m_name,'') + ' ' + ISNULL(Emp_l_name,' ')) as Full_Name,
	(
		case when ISNULL([1],0)-ISNULL([2],0) > 0 and ISNULL([2],0) <> 0 then 'YES'
		else 'NO' 
		end
	)as Got_Increment,
	ISNULL([2],0) as Previous_Salary,
	ISNULL([1],0) as Current_Salary,

	Total_Hours_Worked as Total_Worked_Hours,
	Activity_description as Last_Activity,
	t3.Atten_end_hrs as Hours_worked_in_Last_Activity
from 
(
	select 
		New_Salary,Emp_id, ROW_NUMBER() over (partition by Emp_id order by Changed_date desc) as rno
	from
		t_salary t0
)t1
PIVOT
(
	SUM(New_Salary)
	for rno in ([2],[1])
)pv
join
(
	select
		Emp_id,
		MAX(Atten_start_datetime) as Last_Activity_Datetime,
		SUM(Atten_end_hrs) as Total_Hours_Worked
	from 
		t_atten_det
	group by 
		Emp_id
)t2
on
	pv.Emp_id=t2.Emp_id
join
	t_atten_det t3
on
	t2.Emp_id=t3.Emp_id and t2.Last_Activity_Datetime=t3.Atten_start_datetime
join
	t_emp t5
on
	pv.Emp_id=t5.Emp_id
join
	t_activity t4
on
	t3.Activity_id=t4.Activity_id
order by Full_Name
