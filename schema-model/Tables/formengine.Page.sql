CREATE TABLE [formengine].[Page]
(
[Id] [uniqueidentifier] NOT NULL,
[Created] [datetime2] NOT NULL CONSTRAINT [DF__Page__Created__5E80B329] DEFAULT (getutcdate()),
[Updated] [datetime2] NOT NULL CONSTRAINT [DF__Page__Updated__5F74D762] DEFAULT (getutcdate()),
[Deleted] [bit] NOT NULL CONSTRAINT [DF__Page__Deleted__6068FB9B] DEFAULT ((0)),
[Name] [nvarchar] (max) NULL,
[Description] [nvarchar] (max) NULL,
[ComponentsJson] [nvarchar] (max) NULL,
[FormId] [uniqueidentifier] NULL,
[Icon] [nvarchar] (max) NULL,
[Order] [int] NOT NULL CONSTRAINT [DF_Page_Order] DEFAULT ((0)),
[ShowOnSummary] [bit] NULL
)
GO
ALTER TABLE [formengine].[Page] ADD CONSTRAINT [PK_Page] PRIMARY KEY CLUSTERED ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_Page_FormId] ON [formengine].[Page] ([FormId])
GO
ALTER TABLE [formengine].[Page] ADD CONSTRAINT [FK_Page_Form_FormId] FOREIGN KEY ([FormId]) REFERENCES [formengine].[Form] ([Id]) ON DELETE CASCADE
GO
