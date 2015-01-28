use SqlTest;


select 
	TrainID,
	SUM(Distance) as Distance
	CAST(SUM(Distance)/ABS(DATEDIFF(HOUR,MIN(starttime),MAX(stoptime))) as numeric(18,2)) as Avg_Speed
from
(
	select 
		TrainID,
		StationID,
		StationName,
		Distance,
		(
			case when Arrival is null  then Departure
				else NULL
			end
		) as starttime,
		(
			case when Departure is null then Arrival
				else NULL
			end 
		)as stoptime
	from
		journey_details jd
	
	join station_details sd
	on sd.Station_ID=jd.StationID
	
)innertable
group by TrainID
