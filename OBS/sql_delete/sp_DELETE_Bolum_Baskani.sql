USE [Grup_Hosgoru_OBS]
GO
/****** Object:  StoredProcedure [dbo].[sp_DELETE_Bolum_Baskani]    Script Date: 12.5.2018 01:38:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE  [dbo].[sp_DELETE_Bolum_Baskani]
	
(
	@bolum_baskani_id int,
	@Sonuc NVARCHAR(20) output
)

AS
	DECLARE @bolumbaskani_var INT
	Select @bolumbaskani_Var = COUNT(@bolum_baskani_id) from tbl_bolum_baskani WHERE bolumbaskani_id=@bolum_baskani_id
	IF @bolumbaskani_var > 0
		BEGIN
			DELETE FROM tbl_bolum_baskani WHERE bolumbaskani_id=@bolum_baskani_id
			SET @Sonuc = 'Bölümbaskanı silindi'
		END
	ELSE
		BEGIN
			SET @Sonuc = 'Bölümbaskanı bulunamadı'
		END
		SELECT @Sonuc
		SELECT * from tbl_bolum_baskani


