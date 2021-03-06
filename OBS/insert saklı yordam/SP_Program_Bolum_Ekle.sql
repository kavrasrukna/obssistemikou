USE [Grup_Hosgoru_OBS]
GO
/****** Object:  StoredProcedure [dbo].[SP_Program_Bolum_Ekle]    Script Date: 12.5.2018 00:37:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SP_Program_Bolum_Ekle] 
	(
	@program_id int,
	@bolum_id int
	)
AS
BEGIN
	
	SET NOCOUNT ON;
	INSERT INTO tbl_program_bolum(program_id,bolum_id)
	VALUES (@program_id,@bolum_id)
   
	SELECT program_adi,bolum_adi FROM tbl_program_bolum
	JOIN tbl_program ON tbl_program.program_id=tbl_program_bolum.program_id
	JOIN tbl_bolum ON tbl_bolum.bolum_id=tbl_program_bolum.bolum_id
END
