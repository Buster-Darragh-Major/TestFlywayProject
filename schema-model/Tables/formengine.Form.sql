CREATE TABLE [formengine].[Form]
(
[Id] [uniqueidentifier] NOT NULL,
[Created] [datetime2] NOT NULL CONSTRAINT [DF__Form__Created__5C8CB268] DEFAULT (getutcdate()),
[Updated] [datetime2] NOT NULL CONSTRAINT [DF__Form__Updated__5B988E2F] DEFAULT (getutcdate()),
[Deleted] [bit] NOT NULL CONSTRAINT [DF__Form__Deleted__5D80D6A1] DEFAULT ((0)),
[Name] [nvarchar] (max) NULL,
[Description] [nvarchar] (max) NULL,
[Tags] [nvarchar] (max) NULL,
[FormBuilderId] [uniqueidentifier] NOT NULL,
[PrepopulateSQLScript] [nvarchar] (max) NULL
)
GO
ALTER TABLE [formengine].[Form] ADD CONSTRAINT [PK_Form] PRIMARY KEY CLUSTERED ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_Form_FormBuilderId] ON [formengine].[Form] ([FormBuilderId])
GO
ALTER TABLE [formengine].[Form] ADD CONSTRAINT [FK_Form_FormBuilder_FormBuilderId] FOREIGN KEY ([FormBuilderId]) REFERENCES [formengine].[FormBuilder] ([Id]) ON DELETE CASCADE
GO
