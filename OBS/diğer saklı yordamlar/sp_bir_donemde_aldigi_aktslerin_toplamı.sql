USE [Grup_Hosgoru_OBS]
GO
/****** Object:  StoredProcedure [dbo].[sp_bir_donemde_aldigi_aktslerin_toplamı]    Script Date: 13.5.2018 15:02:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[sp_bir_donemde_aldigi_aktslerin_toplamı]
@ogr_no varchar(9),
@donem_yil varchar(9),
@donem_adi varchar(10)
	AS
BEGIN
	SET NOCOUNT ON;

   SELECT sum(tbl_dersler.akts) as aktstoplam,ogrenci_no,donem_adi,donem_yil
   FROM tbl_ogrenci JOIN tbl_secilen_dersler
ON tbl_ogrenci.ogrenci_no=tbl_secilen_dersler.ogr_no JOIN tbl_acilan_dersler
ON tbl_secilen_dersler.acilan_ders_id=tbl_acilan_dersler.acilan_ders_id
JOIN tbl_donem ON tbl_acilan_dersler.donem_id=tbl_donem.donem_id
JOIN tbl_dersler ON tbl_dersler.ders_id=tbl_acilan_dersler.ders_id
 GROUP BY ogrenci_no,donem_adi,donem_yil

END
