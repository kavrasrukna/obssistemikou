USE [Grup_Hosgoru_OBS]
GO
/****** Object:  StoredProcedure [dbo].[UPDATE_Ogrenci]    Script Date: 13.5.2018 01:34:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[UPDATE_Ogrenci]
@ogr_no varchar(9),
@tc_no varchar (11),
@ad varchar(50),
@soyad varchar(70),
@cinsiyet int,
@email varchar(100),
@kayit_tarihi date,
@mezun_tarihi date,
@dogum_tarihi date,
@mezunlise varchar (200),
@ceptel varchar(11),
@evtel varchar(11),
@dogum_yeri int,
@adres int,
@ogretim_tur int,
@puantur int,
@sinavpuan varchar(10),
@programid int,
@danismanid int,
@ogrenim_durumid int,
@kayit_turu_id int
	
AS
BEGIN

	SET NOCOUNT ON;
	UPDATE tbl_ogrenci SET tc_no=@tc_no, ogr_ad=@ad, ogr_soyad=@soyad, cinsiyet_id=@cinsiyet,
	e_posta=@email, kayit_tarihi=@kayit_tarihi, mezun_tarihi=@mezun_tarihi, dogum_tarihi=@dogum_tarihi, 
	mezun_lise=@mezunlise, ceptel_no=@ceptel,
	evtel_no=@evtel, dogum_yeri_id=@dogum_yeri,@adres=@adres, ogretim_turu_id=@ogretim_tur,
	puanturu_id=@puantur, sinavpuani=@sinavpuan,
	program_id=@programid, danisman_id=@danismanid, ogrenim_durum_id=@ogrenim_durumid, kayit_turu_id=@kayit_turu_id
	WHERE ogrenci_no= @ogr_no
	SELECT*FROM tbl_ogrenci
END
