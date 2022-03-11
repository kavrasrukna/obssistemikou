CREATE PROCEDURE sp_delete_ders_notu
(
	@ogrenci_not_id INT,
	@Sonuc NVARCHAR(20) output
)
AS
	DECLARE @not_var INT
	Select @not_Var = COUNT(ogrenci_not_id) from tbl_ogrenciders_notu WHERE ogrenci_not_id=@ogrenci_not_id
	IF @not_var > 0
		BEGIN
			DELETE FROM tbl_ogrenciders_notu WHERE ogrenci_not_id=@ogrenci_not_id
			SET @Sonuc = 'Öðrenci notu  silindi'
		END
	ELSE
		BEGIN
			SET @Sonuc = 'öðrenci notu bulunamadý'
		END
		SELECT @Sonuc
		SELECT * from tbl_ogrenciders_notu
