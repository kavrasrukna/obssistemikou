SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE UPDATE_Donem
@id int,
@donemad int,
@yil int

	
AS
BEGIN

	SET NOCOUNT ON;
	UPDATE tbl_donem SET donem_adi=@donemad, donem_yil=@yil WHERE donem_id= @id
	SELECT*FROM tbl_donem
END
GO

