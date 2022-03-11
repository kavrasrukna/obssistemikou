CREATE PROCEDURE sp_delete_personel
(
	@personel_id INT,
	@Sonuc NVARCHAR(20) output
)
AS
	DECLARE @ders_var INT
	Select @ders_Var = COUNT(personel_id) from tbl_personel WHERE personel_id=@personel_id
	IF @ders_var > 0
		BEGIN
			DELETE FROM tbl_personel WHERE personel_id=@personel_id
			SET @Sonuc = 'Personel silindi'
		END
	ELSE
		BEGIN
			SET @Sonuc = 'Personel bulunamadý'
		END
		SELECT @Sonuc
		SELECT * from tbl_personel
