GO
ALTER FUNCTION check_employee_has_right(@e_id as varchar(40), @e__role_id as int)
returns bit
AS
BEGIN
DECLARE @result bit = 0
IF(LEN(@e_id)!=0 AND EXISTS (SELECT * FROM employee_role_mapping erm WHERE erm.employee_id =@e_id AND erm.role_id=@e__role_id) )
	BEGIN
		set @result = 1
	END
return @result;
END
	
	