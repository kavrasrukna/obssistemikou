USE [Grup_Hosgoru_OBS]
GO
/****** Object:  StoredProcedure [dbo].[sp_DELETE_Program_Bolum]    Script Date: 12.5.2018 02:18:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROCEDURE [dbo].[sp_DELETE_Program_Bolum]
	
		(
	@program_id int,
	@bolum_id int,
	@Sonuc NVARCHAR(30) output
	)
AS
	DECLARE @program_var INT
	Select @program_Var = COUNT(@program_id) from tbl_program_bolum WHERE program_id=@program_id AND bolum_id=@bolum_id
	IF @program_var > 0
		BEGIN
			DELETE FROM tbl_program_bolum WHERE program_id=@program_id AND bolum_id=@bolum_id
	IF @program_var > 0
			SET @Sonuc = 'Program silindi'
		END
	ELSE
		BEGIN
			SET @Sonuc = 'Program bulunamadı'
		END
		SELECT @Sonuc
		SELECT * from tbl_program_bolum
