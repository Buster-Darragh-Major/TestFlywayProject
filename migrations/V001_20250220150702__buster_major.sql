SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Creating [dbo].[Persons]'
GO
CREATE TABLE [dbo].[Persons]
(
[ID] [int] NOT NULL,
[LastName] [varchar] (255) NOT NULL,
[FirstName] [varchar] (255) NULL,
[Age] [int] NULL
)
GO
PRINT N'Creating primary key [PK__Persons__3214EC277FF0495A] on [dbo].[Persons]'
GO
ALTER TABLE [dbo].[Persons] ADD CONSTRAINT [PK__Persons__3214EC277FF0495A] PRIMARY KEY CLUSTERED ([ID])
GO

SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
GO
SET DATEFORMAT YMD
GO
SET XACT_ABORT ON
GO

PRINT(N'Add 2 rows to [dbo].[Persons]')
INSERT INTO [dbo].[Persons] ([ID], [LastName], [FirstName], [Age]) VALUES (1, 'n', 'd', 5)
INSERT INTO [dbo].[Persons] ([ID], [LastName], [FirstName], [Age]) VALUES (2, 'e', 'e', 4)

