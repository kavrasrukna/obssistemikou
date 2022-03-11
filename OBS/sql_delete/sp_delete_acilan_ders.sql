CREATE PROCEDURE sp_delete_acilan
(
	@acilan_ders_id INT,
	@Sonuc NVARCHAR(20) output
)
AS
	DECLARE @ders_var INT
	Select @ders_Var = COUNT(acilan_ders_id) from tbl_acilan_dersler WHERE acilan_ders_id= @acilan_ders_id
	IF @ders_var > 0
		BEGIN
			DELETE FROM tbl_acilan_dersler WHERE acilan_ders_id= @acilan_ders_id
			SET @Sonuc = 'açýlan ders silindi'
		END
	ELSE
		BEGIN
			SET @Sonuc = 'açýlan ders bulunamadý'
		END
		SELECT @Sonuc
		SELECT * from tbl_acilan_dersler
