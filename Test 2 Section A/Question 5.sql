--to use the default database i.e. SqlTest
use SqlTest;

--answer to Test - 2 = Section A = Question 4 i.e. [ Train ID and Names with their Boarding and Destination Stations ]

select 
	TrainName,
	SUM(ISNULL([101],0)) as "Delhi",
	SUM(ISNULL([102],0)) as "Aligarh",
	SUM(ISNULL([103],0)) as "Lucknow",
	SUM(ISNULL([104],0)) as "Kanpur"

from
(
	select 
		TrainID,
		case when StationID=101 then HoursTaken
		end as "101",
		case when StationID=102 then HoursTaken
		end as "102",
		case when StationID=103 then HoursTaken
		end as "103",
		case when StationID=104 then HoursTaken
		end as "104"

	from
	(
		select 
			TrainID,
			StationID,
			Distance,
			ISNULL(ABS(DATEDIFF(HOUR,Arrival,LAG(Departure) over (order by TrainID,Arrival))),0) as HoursTaken
		from
			Journey_Details jd
	)innertable
)outertable
join Train_Details td
on td.TrainID=outertable.TrainID
group by td.TrainID,TrainName
