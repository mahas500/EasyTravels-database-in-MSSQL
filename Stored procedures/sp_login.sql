ALTER PROCEDURE login_employee(@e_username varchar(20),@e_password varchar(20))
AS
BEGIN
DECLARE @e_count int

SELECT @e_count = COUNT  (e.employee_id) FROM employee e where e.username=@e_username AND e.password=@e_password
	if(@e_count=1)
		BEGIN
		DECLARE @sessionToken varchar(80)
		DECLARE @e_empId varchar(40)

		SELECT @e_empId = e.employee_id FROM employee e where e.username=@e_username AND e.password=@e_password;
		set @sessionToken = dbo.generate_session_token(@e_empId);
		update employee set session_id=@sessionToken where employee_id=@e_empId
	END
	else
		BEGIN
		print('WRONG CREDENTIALS')
	END
END


--EXEC login_employee 'saurabh_123','pass@123';