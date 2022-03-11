
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE UPDATE_Universite
@uni_id int,
@uni_ad varchar (100)
	
AS
BEGIN

	SET NOCOUNT ON;
	UPDATE tbl_universiteler SET uni_adi=@uni_ad  WHERE uni_id= @uni_id
	SELECT*FROM tbl_universiteler
END
GO
