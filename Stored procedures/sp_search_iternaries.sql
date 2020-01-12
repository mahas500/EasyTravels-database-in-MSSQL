USE[easy_travels]
GO
ALTER PROCEDURE search_iternaries(@searchtext as varchar(10))
AS
BEGIN

select * , iternary.value('(/root)[1]', 'varchar(max)') 
from package p where iternary.value('(/root)[1]', 'varchar(max)') LIKE '%'+@searchtext+'%'
END


--EXEC search_iternaries 'airport'