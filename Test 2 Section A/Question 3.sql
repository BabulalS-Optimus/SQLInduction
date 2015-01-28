use SqlTest;

select
	StationName,
	TrainName,
	NewArrivals,
	case when (Lag(StationID) over (order by jd.StationId,jd.TrainID))=StationID then
		CAST(ABS(CAST(DATEDIFF(MINUTE,Lag(NewArrivals) over (order by jd.StationId,jd.TrainID),NewArrivals)as Numeric(18,2)) / 60 )as Numeric(18,2))
	else 0
	end
	as HoursDiff

from
(
	select
		StationID,
		TrainID,
		DATEADD(HOUR,-2.5,Arrival) as NewArrivals

	from
		Journey_Details
	where Arrival is not null
)jd
join Train_Details td
on td.TrainID=jd.TrainID
join Station_Details sd
on sd.Station_ID=jd.StationID