USE [Grup_Hosgoru_OBS]
GO
/****** Object:  StoredProcedure [dbo].[SP_OgretimGorevlisi_Ekle]    Script Date: 12.5.2018 00:14:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SP_OgretimGorevlisi_Ekle]
(
@tc_no varchar(11),
@ogr_gor_ad varchar(50),
@ogr_gor_soyad varchar(70),
@cinsiyet_id int,
@e_posta varchar(100),
@unvan_id int,
@giris_tarihi date,
@cikis_tarihi date,
@evtel_no varchar(11),
@program_id int
)
AS
BEGIN

	SET NOCOUNT ON;
	INSERT INTO tbl_ogretim_gorevlisi(tc_no,ogr_gor_ad,ogr_gor_soyad,cinsiyet_id,e_posta,unvan_id,giris_tarihi,cikis_tarihi,evtel_no,program_id)
	VALUES (@tc_no,@ogr_gor_ad,@ogr_gor_soyad,@cinsiyet_id,@e_posta,@unvan_id,@giris_tarihi,@cikis_tarihi,@evtel_no,@program_id)

	SELECT tc_no,ogr_gor_ad,ogr_gor_soyad,cinsiyet,e_posta,unvan_adi,giris_tarihi,cikis_tarihi,evtel_no,program_adi
	FROM tbl_ogretim_gorevlisi JOIN tbl_cinsiyet ON tbl_cinsiyet.cinsiyet_id=tbl_ogretim_gorevlisi.cinsiyet_id
	JOIN tbl_unvanlar ON tbl_unvanlar.unvan_id=tbl_ogretim_gorevlisi.unvan_id 
	JOIN tbl_program ON tbl_program.program_id=tbl_ogretim_gorevlisi.program_id


	
	
  
END
