
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE UPDATE_Secilen_Dersler
@secilenders_id int,
@ogr_no varchar (9),
@acilanders_id int
	
AS
BEGIN

	SET NOCOUNT ON;
	UPDATE tbl_secilen_dersler SET ogr_no=@ogr_no, acilan_ders_id=@acilanders_id  WHERE secilen_ders_id= @secilenders_id
	SELECT*FROM tbl_secilen_dersler
END
GO
