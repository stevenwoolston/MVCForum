CREATE TABLE [dbo].[Topic] (
    [ID]          INT            IDENTITY (1, 1) NOT NULL,
    [Title]       NVARCHAR (500) NOT NULL,
    [Description] NVARCHAR (MAX) NOT NULL,
    [IsActive]    BIT            NOT NULL,
    [CreatedDate] DATETIME       NOT NULL,
    [CreatedBy]   NVARCHAR (100) NOT NULL,
    [StatusID]    INT            NOT NULL,
    [DocumentID]  NVARCHAR (500) NULL,
    [SpareField]  NVARCHAR (500) NULL,
    [BugTicketId] NVARCHAR (50)  NULL,
    CONSTRAINT [PK_Topic] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_Topic_Status] FOREIGN KEY ([StatusID]) REFERENCES [dbo].[TopicStatus] ([ID])
);











