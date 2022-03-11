CREATE PROCEDURE sp_delete_ogr_ders_notu
(
	@ogr_no varchar(9),
	@donem_id INT,
	@ders_not_id INT,
	@Sonuc NVARCHAR(20) output
)
AS
	DECLARE @bolum_var INT
	Select @bolum_Var = COUNT(ogr_no) from tbl_ogrenciders_notu WHERE ogr_no=@ogr_no and donem_id=@donem_id and ders_not_id=@ders_not_id
	IF @bolum_var > 0
		BEGIN
			DELETE FROM tbl_ogrenciders_notu WHERE  ogr_no=@ogr_no and donem_id=@donem_id and ders_not_id=@ders_not_id
			SET @Sonuc = 'ogrenci ders notu silindi'
		END
	ELSE
		BEGIN
			SET @Sonuc = 'öðrenci ders notu bulunamadý'
		END
		SELECT @Sonuc
		SELECT * from tbl_ogrenciders_notu
