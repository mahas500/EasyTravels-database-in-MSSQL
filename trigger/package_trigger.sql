CREATE TRIGGER [dbo].[package_trigger] 
ON [dbo].[package_view] 
INSTEAD OF INSERT
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO [dbo].[package_validity] ( 
		 employee_id,
		 package_display_name,
		 unique_url_name,
		 days,
		 night,
		 charges,
		 country,
		 city,
		 valid,
		 created_on
	)
	SELECT
         employee_id,
		 package_display_name,
		 unique_url_name,
		 days,
		 night,
		 charges,
		 country,
		 city,
		 valid,
		 created_on
	FROM
        inserted i
    WHERE
        i.package_display_name NOT IN (
            SELECT 
                package_display_name
            FROM 
				[dbo].[package]
        );
END


