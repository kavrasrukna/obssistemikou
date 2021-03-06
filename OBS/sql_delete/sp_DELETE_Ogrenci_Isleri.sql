USE [Grup_Hosgoru_OBS]
GO
/****** Object:  StoredProcedure [dbo].[sp_DELETE_Ogrenci_isleri]    Script Date: 12.5.2018 02:11:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[sp_DELETE_Ogrenci_isleri]
	
		(
	@ogrenci_isleri_id int,
	@Sonuc NVARCHAR(30) output
	)
AS
	DECLARE @ogrenci_isleri_var INT
	Select @ogrenci_isleri_Var = COUNT(@ogrenci_isleri_id) from tbl_ogrenci_isleri WHERE ogrenci_isleri_id=@ogrenci_isleri_id
	IF @ogrenci_isleri_var > 0
		BEGIN
			DELETE FROM tbl_ogrenci_isleri WHERE ogrenci_isleri_id=@ogrenci_isleri_id
			SET @Sonuc = 'Öğrenci işleri silindi'
		END
	ELSE
		BEGIN
			SET @Sonuc = 'Öğrenci işleri bulunamadı'
		END
		SELECT @Sonuc
		SELECT * from tbl_ogrenci_isleri
