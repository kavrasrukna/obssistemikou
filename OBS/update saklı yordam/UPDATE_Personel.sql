
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE UPDATE_Personel
@id int,
@ad varchar (50),
@Soyad varchar(100),
@unvan int,
@birim int,
@tel varchar(11),
@email varchar(100)

AS
BEGIN

	SET NOCOUNT ON;
	UPDATE tbl_personel SET personel_soyad=@Soyad, personel_ad=@ad, unvan_id=@unvan, birim_id=@birim, tel_no=@tel,
	e_posta=@email WHERE personel_id= @id
	SELECT*FROM tbl_personel
END


