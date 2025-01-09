CREATE TABLE [dbo].[NewTable]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[column_1] [int] NULL
)
GO
ALTER TABLE [dbo].[NewTable] ADD CONSTRAINT [PK_NewTable] PRIMARY KEY CLUSTERED ([Id])
GO
