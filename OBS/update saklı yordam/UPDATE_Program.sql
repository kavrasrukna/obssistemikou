
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE UPDATE_Program
@id int,
@ad varchar (50)
	
AS
BEGIN

	SET NOCOUNT ON;
	UPDATE tbl_program SET program_adi=@ad  WHERE program_id= @id
SELECT*FROM tbl_program
END
GO
