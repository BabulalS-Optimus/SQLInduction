
select FORMAT(getdate(),  'ddd dd\t\h MMM yyyy hh:mm:ss tt') as date_ ;

select DATEDIFF(SECOND, '1970/01/01', '2010/01/01' ) as UNIXTimeStamp, '1st Jan 2010' as ActualDate;

select FORMAT(dateadd(day, 2,getdate()),  'ddd dd\t\h MMM yyyy hh:mm:ss tt') as date_ ;
