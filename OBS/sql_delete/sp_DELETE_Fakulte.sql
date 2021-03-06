USE [Grup_Hosgoru_OBS]
GO
/****** Object:  StoredProcedure [dbo].[sp_DELETE_Fakulte]    Script Date: 12.5.2018 01:45:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[sp_DELETE_Fakulte]
(
	@fakulte_id int,
	@Sonuc NVARCHAR(20) output
)

AS
	DECLARE @fakulte_var INT
	Select @fakulte_Var = COUNT(@fakulte_id) from tbl_fakulte WHERE fakulte_id=@fakulte_id
	IF @fakulte_var > 0
		BEGIN
			DELETE FROM tbl_fakulte WHERE fakulte_id=@fakulte_id
			SET @Sonuc = 'Fakülte silindi'
		END
	ELSE
		BEGIN
			SET @Sonuc = 'Fakülte bulunamadı'
		END
		SELECT @Sonuc
		SELECT * from tbl_fakulte