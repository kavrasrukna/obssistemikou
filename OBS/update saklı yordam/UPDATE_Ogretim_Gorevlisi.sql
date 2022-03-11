
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE UPDATE_Ogretim_Gorevlisi
@id int,
@tc varchar (11),
@ad varchar(50),
@soyad varchar(70),
@cinsiyet int,
@unvan int,
@email varchar(100),
@giris_tarihi date,
@cikis_tarihi date,
@evtel varchar(11),
@program_id int
	
AS
BEGIN

	SET NOCOUNT ON;
	UPDATE tbl_ogretim_gorevlisi SET tc_no=@tc, ogr_gor_ad=@ad, ogr_gor_soyad=@soyad, cinsiyet_id=@cinsiyet,
	 unvan_id=@unvan, e_posta=@email, giris_tarihi=@giris_tarihi, cikis_tarihi=@cikis_tarihi,
	 evtel_no=@evtel, program_id=@program_id WHERE ogretim_gorevlisi_id= @id
	 SELECT*FROM tbl_ogretim_gorevlisi
END
GO
