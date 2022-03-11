USE [Grup_Hosgoru_OBS]
GO
/****** Object:  StoredProcedure [dbo].[SP_Fakulte_Ekle]    Script Date: 12.5.2018 00:12:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SP_Fakulte_Ekle]
(
@uni_id int,
@fakulte_adi varchar(100)
)
AS
BEGIN

	SET NOCOUNT ON;
	INSERT INTO tbl_fakulte(uni_id,fakulte_adi)
	VALUES (@uni_id,@fakulte_adi)

	SELECT uni_adi,fakulte_adi FROM tbl_fakulte JOIN tbl_universiteler
	ON tbl_fakulte.uni_id=tbl_universiteler.uni_id
	
  
END
