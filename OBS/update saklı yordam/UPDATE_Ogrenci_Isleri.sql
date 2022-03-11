
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE UPDATE_Ogrenci_Isleri
@id int,
@fakulteid int,
@personelid int,
@ogrenci_isleri_adi varchar(50)

	
AS
BEGIN

	SET NOCOUNT ON;
	UPDATE tbl_ogrenci_isleri SET fakulte_id=@fakulteid, personel_id=@personelid, ogrenci_isleri_adi=@ogrenci_isleri_adi
	WHERE ogrenci_isleri_id= @id
	SELECT*FROM tbl_ogrenci_isleri
END
GO
