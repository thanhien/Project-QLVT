CREATE PROC [dbo].[SP_InDSDDHChuaCoPhieuNhap]
AS
BEGIN
	DECLARE @MASO TABLE (MASODDH NCHAR(8))
	BEGIN
		INSERT @MASO (MASODDH)
		SELECT MasoDDH FROM dbo.DATHANG WHERE MasoDDH NOT IN (SELECT MasoDDH FROM dbo.PHIEUNHAP)
	END
	BEGIN
		SELECT DH.MasoDDH, DH.NGAY, DH.NHACC, NV.HO+' '+NV.TEN AS HOTEN, VT.TENVT, CT_DH.SOLUONG, CT_DH.DONGIA
		FROM (SELECT MasoDDH, NGAY, MANV, NhaCC FROM dbo.DATHANG) AS DH,
			(SELECT MasoDDH, MAVT, SOLUONG, DONGIA FROM dbo.CTDDH) AS CT_DH,
			(SELECT MANV, HO, TEN FROM dbo.NHANVIEN) AS NV,
			(SELECT MAVT, TENVT FROM dbo.VATTU) AS VT,
			(SELECT MASODDH FROM @MASO) AS MS
		WHERE DH.MasoDDH = CT_DH.MasoDDH AND DH.MANV = NV.MANV AND CT_DH.MAVT = VT.MAVT AND MS.MASODDH = DH.MasoDDH
		RETURN 1
	END
	RETURN 0
END
