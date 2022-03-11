CREATE PROCEDURE sp_delete_dersler
(
	@ders_kodu varchar(10),
	@Sonuc NVARCHAR(20) output
)
AS
	DECLARE @ders_var INT
	Select @ders_Var = COUNT(ders_kodu) from tbl_dersler WHERE ders_kodu = @ders_kodu
	IF @ders_var > 0
		BEGIN
			DELETE FROM tbl_dersler WHERE ders_kodu= @ders_kodu
			SET @Sonuc = 'ders silindi'
		END
	ELSE
		BEGIN
			SET @Sonuc = 'ders bulunamadý'
		END
		SELECT @Sonuc
		SELECT * from tbl_dersler 
