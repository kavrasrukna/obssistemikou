USE [Grup_Hosgoru_OBS]
GO
/****** Object:  StoredProcedure [dbo].[SP_Personel_Ekle]    Script Date: 12.5.2018 00:14:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SP_Personel_Ekle]
(
@personel_ad varchar(50),
@personel_soyad varchar(100),
@unvan_id int,
@birim_id int,
@tel_no varchar(11),
@e_posta varchar(100),
@fakulte_id int
)
AS
BEGIN

	SET NOCOUNT ON;
	INSERT INTO tbl_personel(personel_ad,personel_soyad,unvan_id,birim_id,tel_no,e_posta,fakulte_id)
	VALUES (@personel_ad,@personel_soyad,@unvan_id,@birim_id,@tel_no,@e_posta,@fakulte_id)

	SELECT personel_ad,personel_soyad,unvan_adi,birim_adi,tel_no,e_posta,fakulte_adi FROM tbl_personel
	JOIN tbl_unvanlar ON tbl_unvanlar.unvan_id=tbl_personel.unvan_id
	JOIN tbl_birimler ON tbl_birimler.birim_id=tbl_personel.birim_id
	JOIN tbl_fakulte ON tbl_fakulte.fakulte_id=tbl_personel.fakulte_id



	
	
  
END
