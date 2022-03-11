-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Grup Hoþgörü>
-- Create date: <10.05.2018>
-- Description:	<sp_bote_bolumu_ogr_gor_listelenmesi>
-- =============================================
CREATE PROCEDURE sp_bote_bolumu_ogr_gor_listelenmesi
	@bolum_id int
AS
BEGIN
	
	SET NOCOUNT ON;

	Select bolum_adi,ogr_gor_ad,ogr_gor_soyad FROM tbl_bolum JOIN tbl_program_bolum ON tbl_bolum.bolum_id=tbl_program_bolum.bolum_id
JOIN tbl_program ON tbl_program.program_id=tbl_program_bolum.program_id JOIN tbl_ogretim_gorevlisi
ON tbl_ogretim_gorevlisi.program_id=tbl_program.program_id WHERE tbl_bolum.bolum_id=@bolum_id 
END
GO
