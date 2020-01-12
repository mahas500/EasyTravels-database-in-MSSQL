CREATE TRIGGER [dbo].[delete_customer_trigger]
ON [dbo].[customer] 
AFTER INSERT, DELETE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO [dbo].[customer.audit](
        customer_id, 
        name,
        username,
        password,
        email,
        contact_no, 
        session_id, 
        created_on,
		updated_at, 
        operation
    )
    SELECT
        i.customer_id,
        name,
        username,
        password,
        email,
        contact_no,
		session_id,
		created_on,
        GETDATE(),
        'INS'
    FROM
        inserted i
    UNION ALL
    SELECT
        d.customer_id,
        name,
        username,
        password,
        email,
        contact_no,
		session_id,
		created_on,
        GETDATE(),
        'INS'
    FROM
        deleted d;
END


