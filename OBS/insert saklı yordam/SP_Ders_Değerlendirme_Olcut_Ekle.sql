USE [Grup_Hosgoru_OBS]
GO
/****** Object:  StoredProcedure [dbo].[SP_Ders_Değerlendirme_Olcut_Ekle]    Script Date: 12.5.2018 00:12:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[SP_Ders_Değerlendirme_Olcut_Ekle]
(
@ders_id int,
@not_cesit_id int,
@katki_yuzdesi int
)
AS
BEGIN

	SET NOCOUNT ON;
	INSERT INTO tbl_ders_degerlendirme_olcut(ders_id,not_cesit_id,katki_yuzdesi )
	VALUES (@ders_id,@not_cesit_id,@katki_yuzdesi)

	SELECT ders_adi,cesit_adi,katki_yuzdesi FROM tbl_ders_degerlendirme_olcut
	JOIN tbl_dersler ON tbl_dersler.ders_id=tbl_ders_degerlendirme_olcut.ders_id
	JOIN tbl_not_cesitleri ON tbl_not_cesitleri.not_cesit_id=tbl_ders_degerlendirme_olcut.not_cesit_id
   
END
