SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE sp_delete_ogretim_gorevlisi
@tc_no varchar(11),
@sonuc NVARCHAR(20) output
AS
Declare @gorevli_var INT
Select @gorevli_var = COUNT(tc_no) from tbl_ogretim_gorevlisi WHERE tc_no = @tc_no
	IF @gorevli_var > 0
BEGIN
DELETE FROM tbl_ogrenci WHERE tc_no = @tc_no
			SET @Sonuc = 'Öðretim görevlisi silindi'
		END	
	ELSE
		BEGIN
			SET @Sonuc = 'Öðretim görevlisi bulunamadý'
		END
		SELECT @Sonuc
		select * from tbl_ogretim_gorevlisi
GO
