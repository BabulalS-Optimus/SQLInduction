--to use the database i.e. SqlInduction
use SqlInduction;

--query to the solution for assignment I
--NOTE: Balance = ( Ordered_Quantity * Cost_per_Item ) - Amount_Paid
select 
	[User_Name],
	Product_Name,
	CAST(SUM(ISNULL([Order],0)) as  NUMERIC(18)) AS Order_Quantity,
	SUM(ISNULL(Payment,0)) as Amount_Paid,
	FORMAT(MAX(Transaction_Date), 'dd-MM-yyyy') as Last_Transaction_Date,
	ABS( SUM(ISNULL([Order],0)*Cost_Per_Item) - SUM(ISNULL(Payment,0)) ) as Balance
from 
(
	select 
		* 
	from
	t_transaction 
)t0
pivot 
(
	SUM(Transaction_Amount)
	for Transaction_Type IN ([Order],Payment)
) pv
join t_product_master t1
on
pv.Product_ID= t1.Product_ID
join t_user_master t2
on 
pv.[User_ID]=t2.[User_ID]
group by pv.[User_ID], pv.Product_ID, [User_Name], Product_Name
order by [User_Name],Product_Name;