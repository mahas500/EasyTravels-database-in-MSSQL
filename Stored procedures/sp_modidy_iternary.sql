CREATE PROCEDURE dbo.sp_update_package_iternary_day_details(
@package_id varchar(40),
@employee_id varchar(40),
@session_token varchar(80),
@day_number as varchar(10),
@day_data as varchar(max))
AS
BEGIN


 if(dbo.check_employee_session(@employee_id,@session_token)!=0 AND 
	dbo.check_employee_has_right(@employee_id,2)!=0
 )
	BEGIN
		UPDATE package
		set iternary.modify('replace value of (/root/dayWiseIternaries/dayDetails/text())[1] with sql:variable("@day_data")') where package_id=@package_id

	END
 ELSE
	BEGIN
		print('FALSE')
	END

END
GO/*EXEC sp_update_package_iternary_day_details '10ddc398-4405-48ad-ab5f-95322451eff3','f8bc75b0-7b89-4a56-942e-139426b77483','f8bc75b0-7b89-4a56-942e-139426b774831576258022117','1','d54s5d4s5d4'*/