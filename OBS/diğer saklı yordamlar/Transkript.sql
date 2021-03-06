USE [Grup_Hosgoru_OBS]
GO
/****** Object:  StoredProcedure [dbo].[transkript]    Script Date: 13.5.2018 19:11:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[transkript]
@ogr_no int,
@donem_id int
AS
BEGIN

	SET NOCOUNT ON;

    SELECT  donem_yil,donem_adi,ogr_ad,ogr_soyad,bolum_adi,ders_adi,ogretim_yili,ogr_gor_ad,ogr_gor_soyad FROM tbl_ogrenci JOIN tbl_program_bolum
ON tbl_ogrenci.program_id=tbl_program_bolum.bolum_id JOIN tbl_bolum ON tbl_bolum.bolum_id=tbl_program_bolum.bolum_id
JOIN tbl_dersler ON tbl_dersler.bolum_id=tbl_program_bolum.bolum_id JOIN tbl_acilan_dersler 
ON tbl_dersler.ders_id=tbl_acilan_dersler.ders_id JOIN tbl_ogretim_gorevlisi
ON tbl_acilan_dersler.ogretim_gorevlisi_id=tbl_ogretim_gorevlisi.ogretim_gorevlisi_id JOIN tbl_donem ON tbl_acilan_dersler.donem_id=tbl_donem.donem_id
 JOIN tbl_secilen_dersler ON tbl_acilan_dersler.acilan_ders_id=tbl_secilen_dersler.acilan_ders_id
 WHERE tbl_ogrenci.ogrenci_no=@ogr_no AND tbl_donem.donem_id=@donem_id
END
