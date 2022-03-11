SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE sp_bir_öðrencinin_yariyil_notortalamasi
	
@ogrenci_no varchar(9),
@donem_id varchar(9),
@donem_adi varchar(10)
AS
BEGIN
	
	SET NOCOUNT ON;

 
	SELECT sum(akts*katsayi)/sum(akts) as yariyil_notortalamasi FROM tbl_ortalama JOIN tbl_ogrenci
	ON tbl_ortalama.ogr_no=tbl_ogrenci.ogrenci_no 
	JOIN tbl_ogrenciders_notu ON tbl_ogrenciders_notu.ogr_no=tbl_ortalama.ogr_no
	JOIN tbl_donem ON tbl_ogrenciders_notu.donem_id=tbl_donem.donem_id
	JOIN tbl_harf ON tbl_harf.harf_id=tbl_ortalama.harf_id
	JOIN tbl_harf_katsayi ON tbl_harf_katsayi.katsayi_id=tbl_ortalama.katsayi_id
	JOIN tbl_dersler ON tbl_dersler.ders_id=tbl_ortalama.ders_id
	JOIN tbl_ders_degerlendirme_olcut ON tbl_ders_degerlendirme_olcut.ders_id=tbl_dersler.ders_id
	WHERE tbl_ogrenciders_notu.ogr_no=@ogrenci_no and tbl_ogrenciders_notu.donem_id=@donem_id
END
GO


	
	


