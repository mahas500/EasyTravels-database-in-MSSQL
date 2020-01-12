GO
ALTER PROCEDURE get_customer_all_booking_details(@customer_id varchar(40))
AS
BEGIN
DECLARE @e_count int

SELECT * FROM package p RIGHT JOIN booking b ON p.package_id=b.package_id
LEFT JOIN customer c ON c.customer_id=b.customer_id where b.customer_id=@customer_id
END


--EXEC get_customer_all_booking_details 'a81230ab-1510-46e2-b9b4-64fd62fc9911';