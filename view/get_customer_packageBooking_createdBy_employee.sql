ALTER VIEW [dbo].[get_customer_packageBooking_createdBy_employee]
AS
SELECT 
	c.customer_id AS Cust_ID,
	c.name AS Cust_name,
	c.email AS Cust_email,
	p.package_display_name AS Package_Name,
	p.country,
	p.city,
	ee.name AS Emp_name,
	ee.email AS Emp_email
FROM
	[dbo].[customer] AS c 
INNER JOIN [dbo].[booking] AS b 
	ON c.customer_id=b.customer_id 
INNER JOIN [dbo].[package] AS p 
	ON b.package_id=p.package_id
INNER JOIN [dbo].[employee] AS ee 
	ON p.employee_id=ee.employee_id;
GO