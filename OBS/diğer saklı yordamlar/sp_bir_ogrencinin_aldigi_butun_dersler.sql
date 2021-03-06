USE [Grup_Hosgoru_OBS]
GO
/****** Object:  StoredProcedure [dbo].[sp_bir_ogrencinin_aldigi_butun_dersler]    Script Date: 10.5.2018 14:26:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[sp_bir_ogrencinin_aldigi_butun_dersler]
	
	@ogr_no VARCHAR(9),
	@donem_yil varchar(9),
	@donemadi varchar(10)
AS
BEGIN
	
	SET NOCOUNT ON;
SELECT tbl_ogrenci.ogrenci_no, tbl_ogrenci.ogr_ad, tbl_ogrenci.ogr_soyad,tbl_donem.donem_yil,
 tbl_donem.donem_adi, tbl_dersler.ders_kodu, tbl_dersler.ders_adi,tbl_unvanlar.unvan_adi,tbl_ogretim_gorevlisi.ogr_gor_ad,tbl_ogretim_gorevlisi.ogr_gor_soyad
FROM tbl_secilen_dersler join tbl_acilan_dersler
 ON tbl_secilen_dersler.acilan_ders_id=tbl_acilan_dersler.acilan_ders_id join
tbl_dersler on tbl_dersler.ders_id=tbl_acilan_dersler.ders_id join
tbl_donem on tbl_donem.donem_id=tbl_acilan_dersler.donem_id join
tbl_ogretim_gorevlisi on tbl_ogretim_gorevlisi.ogretim_gorevlisi_id=tbl_acilan_dersler.ogretim_gorevlisi_id join
tbl_unvanlar on tbl_unvanlar.unvan_id=tbl_ogretim_gorevlisi.unvan_id join
tbl_ogrenci on tbl_ogrenci.ogrenci_no=tbl_secilen_dersler.ogr_no where tbl_ogrenci.ogrenci_no=@ogr_no AND tbl_donem.donem_yil=@donem_yil AND tbl_donem.donem_adi=@donemadi
END
