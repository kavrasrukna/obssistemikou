
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE UPDATE_Bolum
@id int,
@bolumadi varchar (100),
@bolumbaskan int,
@fakulte int
	
AS
BEGIN

	SET NOCOUNT ON;
	UPDATE tbl_bolum SET bolum_adi=@bolumadi, bolumbaskani_id=@bolumbaskan, fakulte_id=@fakulte
	WHERE bolum_id= @id
	SELECT*FROM tbl_bolum
END
GO
