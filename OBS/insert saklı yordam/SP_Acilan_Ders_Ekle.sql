USE [Grup_Hosgoru_OBS]
GO
/****** Object:  StoredProcedure [dbo].[SP_Acilan_Ders_Ekle]    Script Date: 12.5.2018 00:10:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SP_Acilan_Ders_Ekle]
(
	@ders_id int,
	@donem_id int,
	@ogretim_gorevlisi_id int
	)
AS
BEGIN
	
	SET NOCOUNT ON;
	INSERT INTO tbl_acilan_dersler(ders_id,donem_id,ogretim_gorevlisi_id )
	VALUES (@ders_id,@donem_id,@ogretim_gorevlisi_id)
   
   SELECT acilan_ders_id,ders_adi,donem_yil,donem_adi,ogr_gor_ad,ogr_gor_soyad FROM tbl_acilan_dersler
   JOIN tbl_dersler ON tbl_dersler.ders_id=tbl_acilan_dersler.ders_id 
   JOIN tbl_donem ON tbl_donem.donem_id=tbl_acilan_dersler.donem_id
   JOIN tbl_ogretim_gorevlisi ON tbl_ogretim_gorevlisi.ogretim_gorevlisi_id=tbl_acilan_dersler.ogretim_gorevlisi_id
END
