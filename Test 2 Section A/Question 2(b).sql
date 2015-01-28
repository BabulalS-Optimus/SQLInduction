--to use the default database i.e. SqlTest
use SqlTest;

--answer to Test - 2 = Section A = Question 2(b) i.e. [ Train Names with maximum speed ]
select top 1
	TrainName,
	CAST(SUM(Distance)/ABS(DATEDIFF(HOUR,MIN(starttime),MAX(stoptime))) as numeric(18,2)) as Avg_Speed
from
(
	select 
		TrainID,
		Distance,
		(
			case when Arrival is null then Departure
				else NULL
			end
		) as starttime,
		(
			case when Departure is null then Arrival
				else NULL
			end 
		)as stoptime
	from
		journey_details

) jd
join train_details td
on td.TrainID=jd.TrainID
group by jd.TrainID,TrainName
order by Avg_Speed desc;