
create procedure dbo.DivideNumbers 
	@num1 numeric(18),
	@num2 numeric(18)
as
	declare @output numeric(18)
begin
	set @output=0
	begin try
		set @output=@num1/@num2
		select @output as Result
	end try

	begin catch
		if ERROR_NUMBER() = 8134 
		select 'Number can not be divided by zero' as ErrorMessage;  	
	end catch
end

execute dbo.DivideNumbers 15,0;
execute dbo.DivideNumbers 15,3;


drop procedure dbo.DivideNumbers;
