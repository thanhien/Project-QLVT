USE [QLVT]
GO
/****** Object:  StoredProcedure [dbo].[SP_KiemTraMaSoDDH]    Script Date: 26/11/2017 1:56:24 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[SP_KiemTraMaSoDDH]
@MasoDDH nchar(8)
AS
BEGIN
	if EXISTS(select 1 from dbo.DATHANG where dbo.DATHANG.MasoDDH = @MasoDDH)
	begin
		return 1
	end
	if EXISTS(select 2 from LINK1.QLVT.dbo.DATHANG as P where p.MasoDDH = @MasoDDH)
	begin
		return 2
	end
	return 0
END