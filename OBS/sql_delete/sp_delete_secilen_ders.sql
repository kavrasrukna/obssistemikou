CREATE PROCEDURE sp_delete_secilen_ders
(
	@ogr_no INT,
	@Sonuc NVARCHAR(20) output
)
AS
	DECLARE @bolum_var INT
	Select @bolum_Var = COUNT(ogr_no) from tbl_secilen_dersler   WHERE ogr_no=@ogr_no
	IF @bolum_var > 0
		BEGIN
			DELETE FROM tbl_secilen_dersler WHERE ogr_no=@ogr_no
			SET @Sonuc = 'Secilen ders silindi'
		END
	ELSE
		BEGIN
			SET @Sonuc = 'secilen ders bulunamadý'
		END
		SELECT @Sonuc
		SELECT * from tbl_secilen_dersler
