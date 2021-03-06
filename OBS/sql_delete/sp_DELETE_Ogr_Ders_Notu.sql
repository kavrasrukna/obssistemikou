USE [Grup_Hosgoru_OBS]
GO
/****** Object:  StoredProcedure [dbo].[sp_DELETE_Ogr_Ders_Notu]    Script Date: 12.5.2018 02:20:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[sp_DELETE_Ogr_Ders_Notu]
(
	@ogr_no varchar(9),
	@donem_id INT,
	@ders_not_id INT,
	@Sonuc NVARCHAR(20) output
)
AS
	DECLARE @ogrdersnotu_var INT
	Select @ogrdersnotu_Var = COUNT(ogr_no) from tbl_ogrenciders_notu WHERE ogr_no=@ogr_no and donem_id=@donem_id and ders_not_id=@ders_not_id
	IF @ogrdersnotu_var > 0
		BEGIN
			DELETE FROM tbl_ogrenciders_notu WHERE  ogr_no=@ogr_no and donem_id=@donem_id and ders_not_id=@ders_not_id
			SET @Sonuc = 'ogrenci ders notu silindi'
		END
	ELSE
		BEGIN
			SET @Sonuc = 'öğrenci ders notu bulunamadı'
		END
		SELECT @Sonuc
		SELECT * from tbl_ogrenciders_notu
