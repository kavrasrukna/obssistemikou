
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE sp_DELETE_Ilce
	
		(
	@ilce_id int,
	@ilce_adi varchar(100),
	@Sonuc NVARCHAR(20) output
	)
AS
	DECLARE @ilce_var INT
	Select @ilce_Var = COUNT(@ilce_id) from tbl_ilceler WHERE ilce_id=@ilce_id AND ilce_adi=@ilce_adi
	IF @ilce_var > 0
		BEGIN
			DELETE FROM tbl_ilceler WHERE ilce_id=@ilce_id AND ilce_adi=@ilce_adi
			SET @Sonuc = 'Ýlçe silindi'
		END
	ELSE
		BEGIN
			SET @Sonuc = 'Ýlçe bulunamadý'
		END
		SELECT @Sonuc
		SELECT * from tbl_ilceler
