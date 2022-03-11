USE [Grup_Hosgoru_OBS]
GO
/****** Object:  StoredProcedure [dbo].[sp_bote_bolumu_ogrencilerinin_listelenmesi]    Script Date: 10.5.2018 11:13:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Grup Hoþgörü>
-- Create date: <10.05.2018>
-- Description:	<sp_bote_bolumu_ogrencilerinin_listelenmesi>
-- =============================================
CREATE PROCEDURE [dbo].[sp_bote_bolumu_ogrencilerinin_listelenmesi]
	@bolum_id int
AS
BEGIN
	
	SET NOCOUNT ON;

	Select bolum_adi,ogr_ad,ogr_soyad FROM tbl_bolum JOIN tbl_program_bolum ON tbl_bolum.bolum_id=tbl_program_bolum.bolum_id
JOIN tbl_program ON tbl_program.program_id=tbl_program_bolum.program_id JOIN tbl_ogrenci
ON tbl_ogrenci.program_id=tbl_program.program_id WHERE tbl_bolum.bolum_id=@bolum_id 
END
