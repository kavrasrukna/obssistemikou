USE [Grup_Hosgoru_OBS]
GO
/****** Object:  StoredProcedure [dbo].[SP_Secilen_Ders_Ekle]    Script Date: 12.5.2018 00:38:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SP_Secilen_Ders_Ekle] 
	(
	@ogr_no varchar(9),
	@acilan_ders_id int
	)
AS
BEGIN
	
	SET NOCOUNT ON;
	INSERT INTO tbl_secilen_dersler(ogr_no,acilan_ders_id)
	VALUES (@ogr_no,@acilan_ders_id)
   
	SELECT ogr_no,ogr_ad,ogr_soyad,ders_adi FROM tbl_secilen_dersler
	JOIN tbl_ogrenci ON tbl_secilen_dersler.ogr_no=tbl_ogrenci.ogrenci_no
	JOIN tbl_acilan_dersler ON tbl_acilan_dersler.acilan_ders_id=tbl_secilen_dersler.acilan_ders_id
	JOIN tbl_dersler ON tbl_dersler.ders_id=tbl_acilan_dersler.ders_id
END
