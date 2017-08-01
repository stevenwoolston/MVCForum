-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[proc_List_Topics](
	@UserName	varchar(100)
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT
		t.ID
		,Title
		,Description
		,LEFT(Description, 250) Summary
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
				ta.UserName = @UserName
			AND
			(
				i.CreatedDate > ta.CreatedDate
				OR
				ta.CreatedDate IS NULL
			)
			GROUP BY i.TopicID
		) a ON a.TopicID = t.ID
	WHERE
		t.IsActive = 1
		  
	RETURN 0
	
END