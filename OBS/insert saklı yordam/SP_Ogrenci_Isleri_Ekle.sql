USE [Grup_Hosgoru_OBS]
GO
/****** Object:  StoredProcedure [dbo].[SP_Ogrenci_Isleri_Ekle]    Script Date: 12.5.2018 00:13:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SP_Ogrenci_Isleri_Ekle]
(
@fakulte_id int,
@personel_id int,
@ogrenci_isleri_adi varchar(50)
)
AS
BEGIN

	SET NOCOUNT ON;
	INSERT INTO tbl_ogrenci_isleri(fakulte_id,personel_id,ogrenci_isleri_adi)
	VALUES (@fakulte_id,@personel_id,@ogrenci_isleri_adi)

	SELECT uni_adi,fakulte_adi,ogrenci_isleri_adi FROM tbl_ogrenci_isleri JOIN tbl_fakulte
	ON tbl_ogrenci_isleri.fakulte_id=tbl_fakulte.fakulte_id 
	JOIN tbl_universiteler ON tbl_universiteler.uni_id=tbl_fakulte.uni_id
	
  
END
