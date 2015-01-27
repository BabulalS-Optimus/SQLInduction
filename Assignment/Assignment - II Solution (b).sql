use SqlInduction;
select 
	(ISNULL(Emp_f_name,' ') + ' ' + ISNULL(Emp_m_name,'') + ' ' + ISNULL(Emp_l_name,' ')) as Full_Name,
	(	Case when SUM(t5.Current_Salary)-SUM(t5.Previous_Salary) >0 then 'Yes'
			else 'No'
		end
	) as Got_Increment,
	SUM(ISNULL(t5.Previous_Salary,0)) as Previous_Salary,
	SUM(ISNULL(t5.Current_Salary,0)) as Current_Salary,
	Total_Worked_Hours,
	t3.Activity_description as Last_Activity,
	t2.Atten_end_hrs as Hours_Worked_in_Last_Activity
from 
(
	select 
		Emp_id,
		SUM(Atten_end_hrs) as Total_Worked_Hours,
		MAX(Atten_start_datetime) as Last_Work_Datetime
	from  t_atten_det t0
	group by Emp_id
)t1
join t_emp t6 on t1.Emp_id=t6.Emp_id 
join t_atten_det t2 on t2.Emp_id=t1.Emp_id and t2.Atten_start_datetime=t1.Last_Work_Datetime
join t_activity t3 on t3.Activity_id=t2.Activity_id
join 
(
	select 
		Emp_id,
		case when t4.rno=1 then New_Salary
		end as Current_Salary,
		case when t4.rno=2 then New_salary
		end as Previous_Salary
	from 
	(
		select 
			ROW_NUMBER() over (partition by Emp_id order by Changed_date desc) as rno,	Emp_id,	New_Salary
		from t_salary 
	)t4
)t5 on t1.Emp_id=t5.Emp_id
group by t1.Emp_id, Emp_f_name,Emp_m_name,Emp_l_name,Total_Worked_Hours,t3.Activity_description,t2.Atten_end_hrs;