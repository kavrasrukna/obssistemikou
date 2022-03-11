CREATE PROCEDURE sp_delete_bolum
(
	@bolum_adi varchar(100),
	@Sonuc NVARCHAR(20) output
)
AS
	DECLARE @bolum_var INT
	Select @bolum_Var = COUNT(bolum_adi) from tbl_bolum WHERE bolum_adi=@bolum_adi
	IF @bolum_var > 0
		BEGIN
			DELETE FROM tbl_bolum WHERE bolum_adi=@bolum_adi
			SET @Sonuc = 'Bölüm silindi'
		END
	ELSE
		BEGIN
			SET @Sonuc = 'Bölüm bulunamadý'
		END
		SELECT @Sonuc
		SELECT * from tbl_bolum
