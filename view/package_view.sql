CREATE VIEW [dbo].[package_view] 
AS
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
  created_on,
  'Approved' approval_status
FROM
    [dbo].[package]
UNION
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
  created_on,
  'Pending Approval' approval_status
FROM
    [dbo].[package_validity];


select * from [dbo].[package_view] 