CREATE PROCEDURE sp_delete_adres
(
	@adres_id int,
	@Sonuc NVARCHAR(20) output
)
AS
	DECLARE @adres_var INT
	Select @adres_Var = COUNT(adres_id) from tbl_adres WHERE adres_id=@adres_id
	IF @adres_var > 0
		BEGIN
			DELETE FROM tbl_adres WHERE adres_id=@adres_id
			SET @Sonuc = 'Adres silindi'
		END
	ELSE
		BEGIN
			SET @Sonuc = 'Adres bulunamadý'
		END
		SELECT @Sonuc
		SELECT * from tbl_adres