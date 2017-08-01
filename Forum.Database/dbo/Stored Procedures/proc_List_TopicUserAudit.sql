-- =============================================
-- Author:		SBW
-- Create date: 2013-09-02
-- Description:	Get a list of users who have viewed a Thread
-- =============================================
CREATE PROCEDURE [dbo].[proc_List_TopicUserAudit]
	@TopicID		int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

SELECT ta.UserName, MAX(ta.CreatedDate) LastViewed
	  FROM Topic t
	  join topicuseraudit ta on ta.topicid = t.id
	 WHERE t.ID = @TopicID
	 AND
		t.IsActive = 1
  GROUP BY ta.UserName
  ORDER BY MAX(ta.CreatedDate) DESC
	 
	 RETURN 0
	 
END