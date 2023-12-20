CREATE TABLE [dbo].[History]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[Name] [nvarchar] (200) NULL
)
GO
ALTER TABLE [dbo].[History] ADD CONSTRAINT [PK_History] PRIMARY KEY CLUSTERED ([ID])
GO
