ALTER PROCEDURE [dbo].[SP_UndoXoaVatTu]
@MAVT nchar(4),
@TENVT nvarchar(30),
@DVT nvarchar(15),
@SOLUONGTON int
AS
BEGIN
	Insert into VATTU(MAVT,TENVT,DVT,SOLUONGTON) values (@MAVT,@TENVT,@DVT,@SOLUONGTON)		
END

