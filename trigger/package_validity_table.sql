CREATE TABLE [dbo].[package_validity] (
  package_id INT IDENTITY PRIMARY KEY,
  [employee_id] [varchar](40) NOT NULL,
  [package_display_name] [varchar](100) NOT NULL,
  [unique_url_name] [varchar](50) NOT NULL,
  [days] [int] NOT NULL,
  [night] [int] NOT NULL,
  [charges] [varchar](30) NOT NULL,
  [country] [varchar](30) NOT NULL,
  [city] [varchar](30) NOT NULL,
  [valid] [datetime] NOT NULL,
  [iternary] [xml] NULL,
  [created_on] [datetime] NOT NULL DEFAULT (getdate()),
  
  UNIQUE ([unique_url_name])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

