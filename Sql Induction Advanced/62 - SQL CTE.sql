use SqlInduction;


with
	cteemployees(Name, age, salary, desigid)
	as
	(
		select fname + ' '+lname as Name, age, salary,designation as desigid from employee
	),
	ctedesignation(design,did)
	as
	(
		select name as  design,id as did from dbo.designation
	)

	select Name,age,salary,design as designation from cteemployees e,ctedesignation d where e.desigid=d.did; 

