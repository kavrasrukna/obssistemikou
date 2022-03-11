CREATE PROCEDURE sp_delete_program
(
	@program_adi varchar(100),
	@Sonuc NVARCHAR(20) output
)
AS
	DECLARE @program_var INT
	Select @program_Var = COUNT(program_adi) from tbl_program WHERE program_adi=@program_adi
	IF @program_var > 0
		BEGIN
			DELETE FROM tbl_program WHERE program_adi=@program_adi
			SET @Sonuc = 'Program silindi'
		END
	ELSE
		BEGIN
			SET @Sonuc = 'Program bulunamadý'
		END
		SELECT @Sonuc
		SELECT * from tbl_program