CREATE PROCEDURE get_customer_count_by_enquiry_type(@count int)
AS
BEGIN
SELECT COUNT(customer_id)as number_of_customer,enquiry_type
from enquiry group by enquiry_type having COUNT(customer_id) > @count
END

--EXEC get_customer_count_by_enquiry_type 0

--EXEC get_customer_count_by_enquiry_type 1



