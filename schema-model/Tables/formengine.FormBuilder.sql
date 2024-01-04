CREATE TABLE [formengine].[FormBuilder]
(
[Id] [uniqueidentifier] NOT NULL,
[Created] [datetime2] NOT NULL CONSTRAINT [DF__FormBuild__Creat__55EB6D28] DEFAULT (getutcdate()),
[Updated] [datetime2] NOT NULL CONSTRAINT [DF__FormBuild__Updat__56DF9161] DEFAULT (getutcdate()),
[Deleted] [bit] NOT NULL CONSTRAINT [DF__FormBuild__Delet__57D3B59A] DEFAULT ((0))
)
GO
ALTER TABLE [formengine].[FormBuilder] ADD CONSTRAINT [PK_FormBuilder] PRIMARY KEY CLUSTERED ([Id])
GO
