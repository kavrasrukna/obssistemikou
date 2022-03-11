USE [Grup_Hosgoru_OBS]
GO
/****** Object:  StoredProcedure [dbo].[sp_DELETE_Ders_Turu]    Script Date: 12.5.2018 02:19:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[sp_DELETE_Ders_Turu]
(
	@ders_tur_id INT,
	@Sonuc NVARCHAR(20) output
)
AS
	DECLARE @dersturu_var INT
	Select @dersturu_Var = COUNT(ders_tur_id) from tbl_ders_turu WHERE ders_tur_id=@ders_tur_id
	IF @dersturu_var > 0
		BEGIN
			DELETE FROM tbl_ders_turu WHERE ders_tur_id=@ders_tur_id
			SET @Sonuc = 'Ders turu silindi'
		END
	ELSE
		BEGIN
			SET @Sonuc = 'ders turu bulunamadı'
		END
		SELECT @Sonuc
		SELECT * from tbl_ders_turu