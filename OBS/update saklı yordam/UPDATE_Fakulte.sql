
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE UPDATE_Fakulte
@id int,
@fkl_ad int,
@uni_id varchar(100)
	
AS
BEGIN

	SET NOCOUNT ON;
	UPDATE tbl_fakulte SET fakulte_adi=@fkl_ad, uni_id=@uni_id WHERE fakulte_id= @id
SELECT*FROM tbl_fakulte
END
GO
