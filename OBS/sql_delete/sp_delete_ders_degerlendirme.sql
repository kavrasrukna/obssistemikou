CREATE PROCEDURE sp_delete_ders_degerlendirme
(
	@ders_not_id INT,
	@Sonuc NVARCHAR(20) output
)
AS
	DECLARE @bolum_var INT
	Select @bolum_Var = COUNT(ders_not_id) from tbl_ders_degerlendirme_olcut WHERE ders_not_id=@ders_not_id
	IF @bolum_var > 0
		BEGIN
			DELETE FROM tbl_ders_degerlendirme_olcut WHERE ders_not_id=@ders_not_id
			SET @Sonuc = 'Ölçüt silindi'
		END
	ELSE
		BEGIN
			SET @Sonuc = 'ölçüt bulunamadý'
		END
		SELECT @Sonuc
		SELECT * from tbl_ders_degerlendirme_olcut
