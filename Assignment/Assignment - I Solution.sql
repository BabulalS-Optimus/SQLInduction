use SqlInduction;

select 
	[User_Name], Product_Name,
	CAST(SUM(ISNULL([Orders],0)) as  NUMERIC(18)) AS Order_Quantity,
	SUM(ISNULL(Paid,0)) as Amount_Paid,
	FORMAT(MAX(Transaction_Date), 'dd-MM-yyyy') as Last_Transaction_Date,
	ABS( SUM(ISNULL([Orders],0)*Cost_Per_Item) - SUM(ISNULL(Paid,0)) ) as Balance
from
(
	select 
		[User_ID],Product_ID,
		case when Transaction_type='Order' then	Transaction_Amount
		end as Orders,
		case when Transaction_type='Payment' then Transaction_Amount
		end as Paid,
		Transaction_Date
	from t_transaction 
)t1

join t_product_master t2 on t2.Product_ID= t1.Product_ID
join t_user_master t3 on t3.[User_ID]=t1.[User_ID]
group by t1.[User_ID], t1.Product_ID, [User_Name], Product_Name
order by [User_Name],Product_Name;



