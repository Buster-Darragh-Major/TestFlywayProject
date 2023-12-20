CREATE TABLE [formengine].[CustomComponent]
(
[Id] [uniqueidentifier] NOT NULL,
[Created] [datetime2] NOT NULL CONSTRAINT [DF__CustomCom__Creat__4D4A6ED8] DEFAULT (getutcdate()),
[Updated] [datetime2] NOT NULL CONSTRAINT [DF__CustomCom__Updat__4E3E9311] DEFAULT (getutcdate()),
[Deleted] [bit] NOT NULL CONSTRAINT [DF__CustomCom__Delet__4F32B74A] DEFAULT ((0)),
[Name] [nvarchar] (max) NULL,
[Description] [nvarchar] (max) NULL,
[ComponentsJson] [nvarchar] (max) NULL,
[FormBuilderId] [uniqueidentifier] NOT NULL
)
GO
ALTER TABLE [formengine].[CustomComponent] ADD CONSTRAINT [PK_CustomComponent] PRIMARY KEY CLUSTERED ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_CustomComponent_FormBuilderId] ON [formengine].[CustomComponent] ([FormBuilderId])
GO
ALTER TABLE [formengine].[CustomComponent] ADD CONSTRAINT [FK_CustomComponent_FormBuilder_FormBuilderId] FOREIGN KEY ([FormBuilderId]) REFERENCES [formengine].[FormBuilder] ([Id]) ON DELETE CASCADE
GO
