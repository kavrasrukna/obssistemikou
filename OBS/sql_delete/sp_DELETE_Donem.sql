
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE sp_DELETE_Donem
(
	@donem_id int,
	@Sonuc NVARCHAR(20) output
)

AS
	DECLARE @donem_var INT
	Select @donem_Var = COUNT(@donem_id) from tbl_donem WHERE donem_id=@donem_id
	IF @donem_var > 0
		BEGIN
			DELETE FROM tbl_donem WHERE donem_id=@donem_id
			SET @Sonuc = 'Dönem silindi'
		END
	ELSE
		BEGIN
			SET @Sonuc = 'Dönem bulunamadý'
		END
		SELECT @Sonuc
		SELECT * from tbl_donem