USE [QLVT]
GO
/****** Object:  StoredProcedure [dbo].[sp_InDSVTTangDan]    Script Date: 28/11/2017 2:55:54 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[sp_InDSVTTangDan]
as
begin
	select MAVT, TENVT, DVT, SOLUONGTON  from VATTU order by TENVT asc
end