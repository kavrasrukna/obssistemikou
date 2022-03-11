
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE UPDATE_Program_Bolum
@programid int,
@bolumid int


AS
BEGIN

	SET NOCOUNT ON;
	UPDATE tbl_program_bolum SET bolum_id=@bolumid  WHERE program_id= @programid
	SELECT*FROM tbl_program_bolum
END
GO
