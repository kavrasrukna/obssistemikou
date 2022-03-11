
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE SP_Ders_Turu_Ekle 
(
	@ders_tur_adi varchar(25)
)
AS
BEGIN

	SET NOCOUNT ON;
	
	INSERT INTO tbl_ders_turu(ders_tur_adi) VALUES (@ders_tur_adi)
    
	SELECT * FROM tbl_ders_turu
	
END