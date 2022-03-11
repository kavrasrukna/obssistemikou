
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE UPDATE_Adres

@id int,
@ilce int,
@cadde varchar(50),
@mahalle varchar(50),
@sokak varchar(50),
@numara varchar(50),
@daire varchar(50)
	
AS
BEGIN

	SET NOCOUNT ON;
	UPDATE tbl_adres SET ilce_id=@ilce, cadde=@cadde, mahalle=@mahalle, sokak=@sokak, numara=@numara,
	daire=@daire WHERE adres_id= @id
	SELECT* FROM tbl_adres
END
GO
