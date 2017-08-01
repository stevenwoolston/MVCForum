CREATE TABLE [dbo].[Item] (
    [ID]          INT            IDENTITY (1, 1) NOT NULL,
    [Comment]     NVARCHAR (MAX) NOT NULL,
    [IsActive]    BIT            NOT NULL,
    [CreatedDate] DATETIME       NOT NULL,
    [CreatedBy]   NVARCHAR (100) NOT NULL,
    [TopicID]     INT            NOT NULL,
    [DocumentID]  NVARCHAR(500)    NULL,
    CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_Topic_Item] FOREIGN KEY ([TopicID]) REFERENCES [dbo].[Topic] ([ID])
);



