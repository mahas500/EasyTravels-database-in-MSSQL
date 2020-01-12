GO
ALTER FUNCTION generate_session_token(@e_id as varchar(40))
returns varchar(80)
AS
BEGIN
	DECLARE @session_token as varchar(80)
	DECLARE @timestamp as varchar(40)
	SET  @timestamp= CONVERT(varchar(40),(DATEDIFF_BIG(MILLISECOND,'1970-01-01 00:00:00.000', SYSUTCDATETIME())));
	SET  @session_token=CONCAT(@e_id,@timestamp)
	return @session_token
END

