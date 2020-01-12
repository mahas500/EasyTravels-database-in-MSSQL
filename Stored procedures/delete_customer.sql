USE[easy_travels]
GO
ALTER PROCEDURE sp_delete_customer(
@customer_id varchar(40),
@employee_id varchar(40),
@session_token varchar(80))
AS
BEGIN
	
	if(dbo.check_employee_session(@employee_id,@session_token)!=0 AND 
	dbo.check_employee_has_right(@employee_id,2)!=0
 )
	BEGIN
	
	--Delete customer where customer_id = @customer_id
	print(@customer_id)

	END
 ELSE
	BEGIN
		print('FALSE')
	END

END