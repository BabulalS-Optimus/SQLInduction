
 select FORMAT(getdate(),  'ddd dd\t\h MMM yyyy hh:mm:ss tt') as date_ ;
 
 select FORMAT(DATEDIFF(day, '1970/01/01 00:00:00', getdate()),  'ddd dd\t\h MMM yyyy hh:mm:ss tt') as date_ ;
 
 SELECT convert(varchar(24), DATEDIFF(day, '1970/01/01 00:00:00', getdate()) ,113);

select FORMAT(dateadd(day, 2,getdate()),  'ddd dd\t\h MMM yyyy hh:mm:ss tt') as date_ ;