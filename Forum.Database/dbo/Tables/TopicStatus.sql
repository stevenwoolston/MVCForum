CREATE TABLE [dbo].[TopicStatus] (
    [ID]       INT           IDENTITY (1, 1) NOT NULL,
    [Name]     NVARCHAR (50) NOT NULL,
    [IsActive] BIT           NOT NULL,
    CONSTRAINT [PK_TopicStatus] PRIMARY KEY CLUSTERED ([ID] ASC)
);

