USE [Grup_Hosgoru_OBS]
GO
/****** Object:  StoredProcedure [dbo].[SP_Adres_Ekle]    Script Date: 12.5.2018 00:11:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SP_Adres_Ekle]
(
	@ilce_id int,
	@cadde varchar(50),
	@mahalle varchar(50),
	@sokak varchar(50),
	@numara varchar(50),
	@daire varchar(50)
	)
AS
BEGIN
	
	SET NOCOUNT ON;
	INSERT INTO tbl_adres(ilce_id,cadde,mahalle,sokak,numara,daire)
	VALUES (@ilce_id,@cadde,@mahalle,@sokak,@numara,@daire)
   
   SELECT adres_id,il_adi,ilce_adi,cadde,mahalle,sokak,numara,daire FROM tbl_adres JOIN tbl_ilceler ON tbl_adres.ilce_id=tbl_ilceler.ilce_id
   JOIN tbl_iller ON tbl_iller.il_id=tbl_ilceler.il_id
END
