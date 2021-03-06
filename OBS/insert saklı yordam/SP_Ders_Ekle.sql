USE [Grup_Hosgoru_OBS]
GO
/****** Object:  StoredProcedure [dbo].[SP_Ders_Ekle]    Script Date: 12.5.2018 00:12:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SP_Ders_Ekle]
(
@ders_kodu varchar(10),
@ders_adi varchar(50),
@ogretim_yili varchar(50),
@derstur_id int,
@bolum_id int,
@akts int
)
AS
BEGIN

	SET NOCOUNT ON;
	INSERT INTO tbl_dersler(ders_kodu,ders_adi,ogretim_yili,derstur_id,bolum_id,akts)
	VALUES (@ders_kodu,@ders_adi,@ogretim_yili,@derstur_id,@bolum_id,@akts)

	SELECT ders_kodu,ders_adi,ogretim_yili,ders_tur_adi,bolum_adi,akts FROM tbl_dersler
	JOIN tbl_ders_turu on tbl_dersler.derstur_id=tbl_ders_turu.ders_tur_id
	JOIN tbl_bolum ON tbl_bolum.bolum_id=tbl_dersler.bolum_id
  
END
