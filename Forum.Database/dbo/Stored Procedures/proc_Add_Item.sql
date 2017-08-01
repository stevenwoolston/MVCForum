-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[proc_Add_Item]
	@TopicID	int
	,@Comment	nvarchar(max)
	,@DocumentID nvarchar(500) = null
	,@CreatedBy	nvarchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	INSERT INTO Item
			   (Comment
			   ,IsActive
			   ,DocumentID
			   ,CreatedDate
			   ,CreatedBy
			   ,TopicID)
		 VALUES
			   (@Comment
			   ,1
			   ,@DocumentID
			   ,GETDATE()
			   ,@CreatedBy
			   ,@TopicID)

	RETURN 0
	
END