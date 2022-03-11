USE [Grup_Hosgoru_OBS]
GO
/****** Object:  StoredProcedure [dbo].[SP_Program_Ekle]    Script Date: 13.5.2018 00:49:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SP_Program_Ekle] 
	(
	@program_adi varchar(50),
	@fakulte_id int
	)
AS
BEGIN
	
	SET NOCOUNT ON;
	INSERT INTO tbl_program(program_adi,fakulte_id)
	VALUES (@program_adi,@fakulte_id)
   
	SELECT program_id,program_adi,fakulte_adi FROM tbl_program
	JOIN tbl_fakulte ON tbl_program.fakulte_id=tbl_fakulte.fakulte_id
END
