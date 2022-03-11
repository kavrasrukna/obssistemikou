
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE UPDATE_Dersler
@id int,
@ad varchar (10),
@kod varchar(50),
@yil varchar(50),
@ders_turu int,
@bolum int,
@akts int
	
AS
BEGIN

	SET NOCOUNT ON;
	UPDATE tbl_dersler SET ders_adi=@ad, ders_kodu=@kod, ogretim_yili=@yil, derstur_id=@ders_turu, bolum_id=@bolum,
	akts=@akts WHERE ders_id= @id
	SELECT*FROM tbl_dersler
END
GO
