ALTER PROCEDURE [dbo].[SP_UndoThemVatTu]
@MAVT nchar(4)
AS
BEGIN
	Delete from dbo.VATTU where VATTU.MAVT = @MAVT
END
