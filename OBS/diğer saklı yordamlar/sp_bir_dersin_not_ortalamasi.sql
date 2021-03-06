USE [Grup_Hosgoru_OBS]
GO
/****** Object:  StoredProcedure [dbo].[sp_bir_dersin_not_ortalamasi]    Script Date: 13.5.2018 16:14:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[sp_bir_dersin_not_ortalamasi]
@ogrenci_no varchar(9),
@donem_id varchar(9),
@ders_id int
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT sum((puan*katki_yuzdesi)/100) as notortalaması FROM tbl_ogrenciders_notu JOIN tbl_ogrenci
	ON tbl_ogrenci.ogrenci_no=tbl_ogrenciders_notu.ogr_no
	JOIN tbl_donem ON tbl_donem.donem_id=tbl_ogrenciders_notu.donem_id
	JOIN tbl_ders_degerlendirme_olcut ON tbl_ders_degerlendirme_olcut.ders_not_id=tbl_ogrenciders_notu.ders_not_id
	JOIN tbl_dersler ON tbl_dersler.ders_id=tbl_ders_degerlendirme_olcut.ders_id
	WHERE tbl_ogrenciders_notu.ogr_no=@ogrenci_no and tbl_ders_degerlendirme_olcut.ders_id=@ders_id

END
