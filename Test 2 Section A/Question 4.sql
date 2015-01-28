--to use the default database i.e. SqlTest
use SqlTest;

--answer to Test - 2 = Section A = Question 4 i.e. [ Train ID and Names with their Boarding and Destination Stations ]
select 
	td.TrainID,
	TrainName,
	MAX(startstation) as Boarding,
	MAX(stopstation) as Destination
from
(
	select 
		TrainID,
		(
			case when Arrival is null then StationName
			end
		) as startstation,
		(
			case when Departure is null then StationName
			end 
		)as stopstation
	from
		journey_details jd
	join station_details sd
	on sd.Station_Id=jd.StationID
)innertable
join train_details td
on td.TrainID=innertable.TrainID
group by td.TrainID,TrainName;