-- =============================================
-- Author:		SBW
-- Create date: 27/08/2013
-- Description:	Get Topic list and update audit
-- =============================================
CREATE PROCEDURE [dbo].[proc_Get_Topic]
	@TopicID		int,
	@UserName		varchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT
		t.ID
		,Title
		,Description
		,LEFT(Description, 50) Summary
		,SpareField
		,BugTicketId
		,t.IsActive
		,t.DocumentID
		,CreatedDate
		,CreatedBy
		,t.StatusID
		,ts.Name StatusName
		,COALESCE(i.TotalItems, 0) TotalItems
		,COALESCE(a.TotalUnreadItems, 0) TotalUnreadItems
	FROM
		Topic t
	INNER JOIN
		TopicStatus ts ON ts.ID = t.StatusID
	LEFT OUTER JOIN 
		(
			SELECT
				TopicID, COUNT (*) TotalItems
			FROM
				Item
			GROUP BY TopicID
		) i ON i.TopicID = t.ID
	LEFT OUTER JOIN
		(
			SELECT	
				i.TopicID, COUNT(*) TotalUnreadItems
			FROM
				Item i
			LEFT OUTER JOIN
				TopicUserAudit ta ON ta.TopicID = i.TopicID
			WHERE
				i.CreatedDate > ta.CreatedDate
			OR
				ta.CreatedDate IS NULL
			GROUP BY i.TopicID
		) a ON a.TopicID = t.ID
	WHERE
		t.ID = @TopicID
	AND
		t.IsActive = 1

	--	Now mark that the user has viewed the Topic for auditing purposes
	IF EXISTS ( SELECT TopicID FROM TopicUserAudit WHERE UserName = @UserName AND TopicID = @TopicID )
	BEGIN
		UPDATE TopicUserAudit
		   SET CreatedDate = GETDATE()
		 WHERE TopicID = @TopicID
		   AND UserName = @UserName
	END
	ELSE
	BEGIN
		INSERT INTO TopicUserAudit
				   (TopicID
				   ,UserName
				   ,CreatedDate)
			 VALUES
				   (@TopicID
				   ,@UserName
				   ,GETDATE())
	END
	
	RETURN 0
	
END