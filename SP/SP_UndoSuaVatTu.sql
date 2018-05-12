ALTER PROC [dbo].[SP_UndoSuaVatTu]
@MAVT nchar(4),
@TENVT nvarchar(30),
@DVT nvarchar(15),
@SOLUONGTON int
AS
BEGIN
	UPDATE VATTU
	SET VATTU.TENVT = @TENVT, VATTU.DVT = @DVT, VATTU.SOLUONGTON = @SOLUONGTON
	WHERE (VATTU.MAVT = @MAVT);
END