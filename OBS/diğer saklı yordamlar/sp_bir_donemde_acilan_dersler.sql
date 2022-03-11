
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE sp_bir_donemde_acilan_dersler 
@donem INT
AS
BEGIN
	
	SET NOCOUNT ON;

   SELECT tbl_donem.donem_yil, tbl_donem.donem_adi, tbl_dersler.ders_kodu, tbl_dersler.ders_adi, tbl_ogretim_gorevlisi.ogr_gor_ad,tbl_ogretim_gorevlisi.ogr_gor_soyad
FROM tbl_acilan_dersler JOIN tbl_ogretim_gorevlisi
ON tbl_acilan_dersler.ogretim_gorevlisi_id=tbl_ogretim_gorevlisi.ogretim_gorevlisi_id join
tbl_dersler on tbl_dersler.ders_id=tbl_acilan_dersler.ders_id join
tbl_donem on tbl_donem.donem_id=tbl_acilan_dersler.donem_id where tbl_acilan_dersler.donem_id=@donem 
END
GO
