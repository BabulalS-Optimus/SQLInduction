--to use the database i.e. SqlInduction
use SqlInduction;

--to create a view of the table as temp_view
create view temp_view as (
	select usr.User_Name, prd.Product_Name, 
	ISNULL(
	(
		select SUM(tin.Transaction_Amount) from t_transaction tin 
		left join t_user_master tin_usr on  tin_usr.User_ID =tin.User_ID
		left join t_product_master tin_prd on  tin_prd.Product_ID =tin.Product_ID
		where tin.Transaction_Type='Order' and tin_usr.User_Name =usr.User_Name and tin_prd.Product_Name=prd.Product_Name
	),0) as Order_Quantity,
	ROUND(ISNULL(
	(
		select SUM(tin.Transaction_Amount * tin_prd.Cost_Per_Item) from t_transaction tin 
		left join t_user_master tin_usr on  tin_usr.User_ID =tin.User_ID
		left join t_product_master tin_prd on  tin_prd.Product_ID =tin.Product_ID
		where tin.Transaction_Type='Order' and tin_usr.User_Name =usr.User_Name and tin_prd.Product_Name=prd.Product_Name
	),0),2) as Order_Amount,

	isnull(
	(
		select SUM(tin.Transaction_Amount) from t_transaction tin
		
		left join t_user_master tin_usr on  tin_usr.User_ID =tin.User_ID
		left join t_product_master tin_prd on  tin_prd.Product_ID =tin.Product_ID
		where tin.Transaction_Type='Payment' and tin_usr.User_Name =usr.User_Name and tin_prd.Product_Name=prd.Product_Name

	),0) as Amount_Paid,
	(
		select MAX(tin.Transaction_Date) from t_transaction tin
		
		left join t_user_master tin_usr on  tin_usr.User_ID =tin.User_ID
		left join t_product_master tin_prd on  tin_prd.Product_ID =tin.Product_ID
		where tin_usr.User_Name =usr.User_Name and tin_prd.Product_Name=prd.Product_Name

	)as Last_Transaction_Date
	from t_user_master usr 
	left join t_transaction trn on usr.User_ID=trn.User_ID 
	left join t_product_master prd on prd.Product_ID=trn.Product_ID 
	group by usr.User_Name, prd.Product_Name
);

--to read the data as per the requirement
select User_Name, Product_Name, Order_Quantity, Amount_Paid, Last_Transaction_Date, ABS(Amount_Paid-Order_Amount) as Balance from temp_view  order by User_Name,Product_Name;

--to delete the view with the name as temp_view
drop view temp_view;