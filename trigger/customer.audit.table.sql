CREATE TABLE [dbo].[customer.audit](
	[change_id] INT IDENTITY PRIMARY KEY,
	[customer_id] [varchar](40) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[username] [varchar](20) NOT NULL,
	[password] [varchar](20) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[contact_no] [varchar](15) NOT NULL,
	[session_id] [varchar](40) NULL,
	[created_on] [datetime] NOT NULL DEFAULT (getdate()),
	updated_at DATETIME NOT NULL,
    operation CHAR(3) NOT NULL,
    CHECK(operation = 'INS' or operation='DEL')
);