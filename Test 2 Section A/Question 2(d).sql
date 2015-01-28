--to use the default database i.e. SqlTest
use SqlTest;

--answer to Test - 2 = Section A = Question 2(d) i.e. [ Train Names whose stoppage is not Aligarh and Kanpur ]

select 
	DISTINCT TrainName
from
	Journey_Details jd1
join Train_Details td
on td.TrainID=jd1.TrainID
where jd1.TrainID NOT IN 
	(
		select 
			TrainID
		from 
			Journey_Details jd 
		join Station_Details sd
		on sd.Station_ID=jd.StationID
		where sd.StationName in ('Aligarh','Kanpur')
	)




