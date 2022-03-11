
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE UPDATE_Ders_Turu
@ders_tur_id int,
@ders_tur_adi varchar(25)
	
AS
BEGIN

	SET NOCOUNT ON;
	UPDATE tbl_ders_turu SET ders_tur_adi=@ders_tur_adi  WHERE ders_tur_id= @ders_tur_id
	SELECT*FROM tbl_ders_turu
END
GO
