CREATE PROC [dbo].[SP_InDSNVTangDan]
AS 
BEGIN
	select MANV, HO, TEN, DIACHI, NGAYSINH, LUONG, MACN from NHANVIEN order by HO, TEN asc
END