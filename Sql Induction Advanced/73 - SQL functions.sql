

create function dbo.FindLeapYear(@year numeric)
returns varchar(50)
as
begin
	declare @message varchar(50)

	set @message = 'Not a LEAP YEAR';

		if (( @year % 4 = 0 AND @YEAR % 100 <> 0) OR @YEAR % 400 = 0 )
			set @message = 'LEAP YEAR'

	return @message
end

select dbo.FindLeapYear(2001) as MESSAGE_RECEIVED;
select dbo.FindLeapYear(2008) as MESSAGE_RECEIVED;
select dbo.FindLeapYear(2012) as MESSAGE_RECEIVED;
select dbo.FindLeapYear(2015) as MESSAGE_RECEIVED;
select dbo.FindLeapYear(2016) as MESSAGE_RECEIVED;

drop function dbo.FindLeapYear;