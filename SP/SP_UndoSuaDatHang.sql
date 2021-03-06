CREATE PROC [dbo].[SP_UndoSuaDatHang]
	@MasoDDH nchar(8),
	@NGAY date,
	@NhaCC nvarchar(100),
	@MANV int,
	@MAKHO nchar(6)
AS
BEGIN
	UPDATE DATHANG
	SET DATHANG.NGAY = @NGAY, DATHANG.NhaCC = @NhaCC, DATHANG.MANV = @MANV, DATHANG.MAKHO = @MAKHO
	WHERE (DATHANG.MasoDDH = @MasoDDH);
END
