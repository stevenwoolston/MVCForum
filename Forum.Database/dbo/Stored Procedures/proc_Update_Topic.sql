-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[proc_Update_Topic]
	@TopicID		int
   ,@Title			nvarchar(500)
   ,@Description	nvarchar(max)
   ,@BugTicketId	nvarchar(50) = null
   ,@DocumentID		nvarchar(500)
   ,@SpareField		nvarchar(500) = null
   ,@StatusID		int
   ,@IsActive		bit
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE Topic
	   SET Title = @Title
		  ,Description = @Description
		  ,StatusID = @StatusID
		  ,SpareField = @SpareField
		  ,BugTicketId = @BugTicketId
		  ,DocumentID = @DocumentID
		  ,IsActive = @IsActive
	 WHERE ID = @TopicID
	 
	RETURN 0
	
END