USE [Grup_Hosgoru_OBS]
GO
/****** Object:  StoredProcedure [dbo].[SP_Donem_Ekle]    Script Date: 12.5.2018 00:12:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SP_Donem_Ekle]
(
@donem_yil varchar(9),
@donem_adi varchar(10)
)
AS
BEGIN

	SET NOCOUNT ON;
	INSERT INTO tbl_donem(donem_yil,donem_adi)
	VALUES (@donem_yil,@donem_adi)

	SELECT donem_yil,donem_adi FROM tbl_donem
	
  
END
