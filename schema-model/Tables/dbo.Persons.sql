CREATE TABLE [dbo].[Persons]
(
[ID] [int] NOT NULL,
[LastName] [varchar] (255) NOT NULL,
[FirstName] [varchar] (255) NULL,
[Age] [int] NULL
)
GO
ALTER TABLE [dbo].[Persons] ADD CONSTRAINT [PK__Persons__3214EC277FF0495A] PRIMARY KEY CLUSTERED ([ID])
GO
