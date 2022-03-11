
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE UPDATE_Bolum_Baskani
@id int,
@ogretim_gorevlisi int
	
AS
BEGIN

	SET NOCOUNT ON;
	UPDATE tbl_bolum_baskani SET ogretim_gorevlisi_id=@ogretim_gorevlisi WHERE bolumbaskani_id= @id
	SELECT*FROM tbl_bolum_baskani
END
GO
