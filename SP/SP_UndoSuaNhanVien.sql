CREATE PROC [dbo].[SP_UndoSuaNhanVien]
@MANV int,
@HO nvarchar(40),
@TEN nvarchar(100),
@DIACHI nvarchar(100),
@NGAYSINH datetime,
@LUONG float,
@MACN nchar(10)
AS
BEGIN
	UPDATE NHANVIEN
	SET NHANVIEN.HO = @HO, NHANVIEN.TEN = @TEN, NHANVIEN.DIACHI = @DIACHI, NHANVIEN.NGAYSINH = @NGAYSINH, NHANVIEN.LUONG = @LUONG,
	NHANVIEN.MACN = @MACN
	WHERE (NHANVIEN.MANV= @MANV);
END