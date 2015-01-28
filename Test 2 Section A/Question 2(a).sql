--to use the default database i.e. SqlTest
use SqlTest;

--answer to Test - 2 = Section A = Question 2(a) i.e. [ Train Names covered maximu distance ]

select top 1
	TrainName,
	SUM(Distance) as Distance
from
	journey_details jd
join
	train_details td
on td.TrainID=jd.TrainID
group by td.TrainID,TrainName
order by Distance desc