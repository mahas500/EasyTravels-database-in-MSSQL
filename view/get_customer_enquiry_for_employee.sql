ALTER VIEW [dbo].[get_customer_enquiry_for_employee]
AS
SELECT 
	c.customer_id AS Cust_ID,
	c.name AS Cust_name,
	c.email AS Cust_email,
	e.enquiry_id,
	e.enquiry_detail,
	ee.name AS Emp_name,
	ee.email AS Emp_email
FROM
	[dbo].[customer] AS c 
INNER JOIN [dbo].[enquiry] AS e 
	ON c.customer_id=e.customer_id 
INNER JOIN [dbo].[employee] AS ee 
	ON e.employee_id=ee.employee_id;
GO