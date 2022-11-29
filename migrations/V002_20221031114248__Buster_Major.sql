SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Altering [dbo].[User]'
GO
-- Some different comment dfkskgfvhdsogfbvihjdlbvjidflbvnji
-- Some other random comment bfdhsogbfdiho
ALTER TABLE [dbo].[User] ADD
[Username] [nvarchar] (200) NULL
GO
