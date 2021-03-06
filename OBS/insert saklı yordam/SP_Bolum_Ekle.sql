USE [Grup_Hosgoru_OBS]
GO
/****** Object:  StoredProcedure [dbo].[SP_Bolum_Ekle]    Script Date: 12.5.2018 00:11:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SP_Bolum_Ekle]
(
	@bolum_adi varchar(100),
	@bolumbaskani_id int,
	@fakulte_id int
	)
	
AS
BEGIN

	SET NOCOUNT ON;
   INSERT INTO tbl_bolum(bolum_adi,bolumbaskani_id,fakulte_id) VALUES (@bolum_adi,@bolumbaskani_id,@fakulte_id)

	SELECT bolum_adi,ogr_gor_ad,ogr_gor_soyad,fakulte_adi FROM tbl_bolum
	JOIN tbl_bolum_baskani ON tbl_bolum.bolumbaskani_id=tbl_bolum_baskani.bolumbaskani_id
	JOIN tbl_ogretim_gorevlisi ON tbl_bolum_baskani.ogretim_gorevlisi_id=tbl_ogretim_gorevlisi.ogretim_gorevlisi_id
	JOIN tbl_fakulte ON tbl_fakulte.fakulte_id=tbl_bolum.fakulte_id
	

END
