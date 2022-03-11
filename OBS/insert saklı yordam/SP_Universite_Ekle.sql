USE [Grup_Hosgoru_OBS]
GO
/****** Object:  StoredProcedure [dbo].[SP_Universite_Ekle]    Script Date: 12.5.2018 00:38:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SP_Universite_Ekle] 
	(
	@uni_adi varchar(100)
	)
AS
BEGIN
	
	SET NOCOUNT ON;
	INSERT INTO tbl_universiteler(uni_adi)
	VALUES (@uni_adi)
   
	SELECT * FROM tbl_universiteler
END
