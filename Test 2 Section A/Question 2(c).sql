--to use the default database i.e. SqlTest
use SqlTest;

--answer to Test - 2 = Section A = Question 2(c) i.e. [ Train Names which stops at least at 3 Stations ]

select 
	TrainName,
	COUNT(StationID)+2 as Number_Of_Stations
from
	journey_details jd
join train_details td
on td.TrainID=jd.TrainID
where Arrival is not null and Departure is not null
group by jd.TrainID,TrainNAme
having COUNT(StationID)+2 >= 3;