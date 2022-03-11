
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE UPDATE_Ilce
@id int,
@il_id int,
@ilce_ad varchar(100)
	
AS
BEGIN

	SET NOCOUNT ON;
	UPDATE tbl_ilceler SET ilce_adi=@ilce_ad, il_id=@il_id WHERE ilce_id= @id
	SELECT*FROM tbl_ilceler
END
GO
