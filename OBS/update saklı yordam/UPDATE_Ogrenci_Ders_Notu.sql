
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE UPDATE_Ogrenci_Ders_Notu
@id int,
@ogr_no varchar(9),
@donem_id int,
@ders_not_id int,
@puan int

AS
BEGIN

	SET NOCOUNT ON;
	UPDATE tbl_ogrenciders_notu SET ogr_no=@ogr_no, donem_id=@donem_id, ders_not_id=@ders_not_id, puan=@puan
	 WHERE ogrenci_not_id= @id
	 SELECT*FROM tbl_ogrenciders_notu
END
GO
