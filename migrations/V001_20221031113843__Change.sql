﻿SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Creating [dbo].[User]'
GO
-- This is untotally unrelated
-- This is totally related
CREATE TABLE [dbo].[User]
(
[UserId] [int] NOT NULL IDENTITY(1, 1),
[FirstName] [nvarchar] (200) NULL,
[LastName] [nvarchar] (200) NULL,
[DateOfBirth] [date] NULL
)
GO
-- fedhibhob