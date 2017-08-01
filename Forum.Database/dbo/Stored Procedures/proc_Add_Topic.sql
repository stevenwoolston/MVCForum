-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[proc_Add_Topic]
   @Title			nvarchar(500)
   ,@Description	nvarchar(max)
   ,@DocumentID		nvarchar(500) = null
   ,@CreatedBy		nvarchar(100)
   ,@SpareField		nvarchar(500) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @DefaultStatusID	int
	SELECT @DefaultStatusID = MIN(ID) FROM TopicStatus
	
	INSERT INTO Topic
			   (Title
			   ,Description
			   ,IsActive
			   ,DocumentID
			   ,StatusID
			   ,CreatedDate
			   ,CreatedBy
			   ,SpareField)
		 VALUES
			   (@Title
			   ,@Description
			   ,1
			   ,@DocumentID
			   ,@DefaultStatusID
			   ,GETDATE()
			   ,@CreatedBy
			   ,@SpareField)
		 
	RETURN 0
	
END