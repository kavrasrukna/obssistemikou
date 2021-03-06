USE [Grup_Hosgoru_OBS]
GO
/****** Object:  StoredProcedure [dbo].[SP_Ogrenci_DersNotu_Ekle]    Script Date: 12.5.2018 00:13:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SP_Ogrenci_DersNotu_Ekle]
(
@ogr_no varchar(9),
@donem_id int,
@ders_not_id int,
@puan int
)
AS
BEGIN

	SET NOCOUNT ON;
	INSERT INTO tbl_ogrenciders_notu(ogr_no,donem_id,ders_not_id,puan)
	VALUES (@ogr_no,@donem_id,@ders_not_id,@puan)

	SELECT ogr_no,ogr_ad,ogr_soyad,donem_yil,donem_adi,cesit_adi,ders_adi,puan,katki_yuzdesi FROM tbl_ogrenciders_notu JOIN tbl_ogrenci
	ON tbl_ogrenciders_notu.ogr_no=tbl_ogrenci.ogrenci_no 
	JOIN tbl_donem ON tbl_ogrenciders_notu.donem_id=tbl_donem.donem_id

	JOIN tbl_ders_degerlendirme_olcut ON tbl_ders_degerlendirme_olcut.ders_not_id=tbl_ogrenciders_notu.ders_not_id
	JOIN tbl_dersler ON tbl_dersler.ders_id=tbl_ders_degerlendirme_olcut.ders_id
	JOIN tbl_not_cesitleri ON tbl_ders_degerlendirme_olcut.not_cesit_id=tbl_not_cesitleri.not_cesit_id
	
	
  
END
