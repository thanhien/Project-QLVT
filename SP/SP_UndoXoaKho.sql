USE [QLVT]
GO
/****** Object:  StoredProcedure [dbo].[SP_UndoXoaKho]    Script Date: 24/11/2017 4:14:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[SP_UndoXoaKho]
@MAKHO nchar(6),
@TENKHO nvarchar(30),
@DIACHI nvarchar(100),
@MACN nchar(10)
AS
BEGIN
	insert into KHO(MAKHO,TENKHO,DIACHI,MACN) values (@MAKHO,@TENKHO,@DIACHI,@MACN);
END