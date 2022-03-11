USE [Grup_Hosgoru_OBS]
GO
/****** Object:  StoredProcedure [dbo].[SP_Ilce_Ekle]    Script Date: 12.5.2018 00:13:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SP_Ilce_Ekle]
(
@il_id int,
@ilce_adi varchar(100)
)
AS
BEGIN

	SET NOCOUNT ON;
	INSERT INTO tbl_ilceler(il_id,ilce_adi)
	VALUES (@il_id,@ilce_adi)

	SELECT ilce_id,ilce_adi,il_adi FROM tbl_ilceler JOIN tbl_iller
	ON tbl_ilceler.il_id=tbl_iller.il_id
	
  
END
