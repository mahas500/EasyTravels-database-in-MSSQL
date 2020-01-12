GO
ALTER FUNCTION check_employee_session(@e_id as varchar(40),@session_token varchar(80))
returns bit
AS
BEGIN
DECLARE @result bit = 0


IF(LEN(@session_token)!=0)
	BEGIN
		DECLARE @e_count int
		SELECT @e_count = count(*) from employee e where e.employee_id=@e_id AND e.session_id=@session_token; 

		IF(@e_count!=0)
			BEGIN
				SET @result = 1;
			END
	END


	return @result;
END
	
	