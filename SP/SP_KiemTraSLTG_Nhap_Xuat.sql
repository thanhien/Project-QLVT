CREATE PROC [dbo].[SP_KiemTraSLTG_Nhap_Xuat]
@ROLE VARCHAR(50),
@STARTTIME DATE,
@LASTTIME DATE
AS
BEGIN
	IF(@ROLE = 'CHINHANH')
	BEGIN
		IF NOT EXISTS(SELECT 1 FROM dbo.PHIEUNHAP, dbo.PHIEUXUAT WHERE PHIEUNHAP.NGAY BETWEEN @STARTTIME AND @LASTTIME AND PHIEUXUAT.NGAY BETWEEN @STARTTIME AND @LASTTIME)
		BEGIN
			RETURN 1
		END
	END
	IF(@ROLE = 'CONGTY')
	BEGIN
		IF NOT EXISTS(SELECT 1 FROM dbo.PHIEUNHAP, dbo.PHIEUXUAT WHERE PHIEUNHAP.NGAY BETWEEN @STARTTIME AND @LASTTIME AND PHIEUXUAT.NGAY BETWEEN @STARTTIME AND @LASTTIME)
		BEGIN
			RETURN 1
		END
		IF NOT EXISTS(SELECT 1 FROM LINK1.QLVT.dbo.PHIEUNHAP, LINK1.QLVT.dbo.PHIEUXUAT WHERE PHIEUNHAP.NGAY BETWEEN @STARTTIME AND @LASTTIME AND PHIEUXUAT.NGAY BETWEEN @STARTTIME AND @LASTTIME)
		BEGIN
			RETURN 2
		END
	END
	RETURN 0
END