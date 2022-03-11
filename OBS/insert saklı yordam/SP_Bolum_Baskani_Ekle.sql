USE [Grup_Hosgoru_OBS]
GO
/****** Object:  StoredProcedure [dbo].[SP_Bolum_Baskani_Ekle]    Script Date: 12.5.2018 00:11:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SP_Bolum_Baskani_Ekle]
(
	@ogretim_gorevlisi_id int
	)
	
AS
BEGIN

	SET NOCOUNT ON;
   INSERT INTO tbl_bolum_baskani(ogretim_gorevlisi_id) VALUES (@ogretim_gorevlisi_id)


SELECT bolum_adi,ogr_gor_ad,ogr_gor_soyad FROM tbl_bolum_baskani JOIN tbl_ogretim_gorevlisi
ON tbl_bolum_baskani.ogretim_gorevlisi_id=tbl_ogretim_gorevlisi.ogretim_gorevlisi_id
JOIN tbl_bolum ON tbl_bolum_baskani.bolumbaskani_id=tbl_bolum.bolumbaskani_id 
	
END
