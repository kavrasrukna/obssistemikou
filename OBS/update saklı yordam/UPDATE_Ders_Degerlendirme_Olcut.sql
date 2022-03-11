
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE UPDATE_Ders_Degerlendirme_Olcut
@id int,
@ders int,
@notcesidi int,
@katki int
	
AS
BEGIN

	SET NOCOUNT ON;
	UPDATE tbl_ders_degerlendirme_olcut SET ders_id=@ders, not_cesit_id=@notcesidi, katki_yuzdesi=@katki 
	WHERE ders_not_id= @id
	SELECT*FROM tbl_ders_degerlendirme_olcut
END
GO
