SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE sp_delete_ogrenciler
@tc_no varchar(11),
@sonuc NVARCHAR(20) output
AS
Declare @ogrenci_var INT
Select @ogrenci_var = COUNT(tc_no) from tbl_ogrenci WHERE tc_no = @tc_no
	IF @ogrenci_var > 0
BEGIN
DELETE FROM tbl_ogrenci WHERE tc_no = @tc_no
			SET @Sonuc = '��renci silindi'
		END	
	ELSE
		BEGIN
			SET @Sonuc = '��renci bulunamad�'
		END
		SELECT @Sonuc
		select * from tbl_ogrenci
GO
