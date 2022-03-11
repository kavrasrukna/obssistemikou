USE [Grup_Hosgoru_OBS]
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_Acilan_Ders]    Script Date: 12.5.2018 02:44:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE  [dbo].[UPDATE_Acilan_Ders]
@acilan int,
@ders_id int,
@donem_id int,
@ogr_id int

AS
BEGIN
	
	SET NOCOUNT ON;

	UPDATE tbl_acilan_dersler SET ders_id=@ders_id, donem_id=@donem_id, ogretim_gorevlisi_id=@ogr_id
	 WHERE acilan_ders_id=@acilan
	 SELECT*FROM tbl_acilan_dersler

END
