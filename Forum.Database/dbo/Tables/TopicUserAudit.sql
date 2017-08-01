CREATE TABLE [dbo].[TopicUserAudit] (
    [TopicID]     INT            NOT NULL,
    [UserName]    NVARCHAR (100) NOT NULL,
    [CreatedDate] DATETIME       NOT NULL,
    CONSTRAINT [PK_TopicUserAudit] PRIMARY KEY CLUSTERED ([TopicID] ASC, [UserName] ASC)
);

