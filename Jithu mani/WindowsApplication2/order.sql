/*
   Saturday, October 26, 20131:22:27 AM
   User: 
   Server: (local)
   Database: milk
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.[order]
	(
	code int NOT NULL,
	agentname varchar(50) NOT NULL,
	date varchar(50) NOT NULL,
	time varchar(50) NOT NULL,
	milkname varchar(50) NOT NULL,
	qty varchar(50) NOT NULL,
	rate varchar(50) NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.[order] SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.[order]', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.[order]', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.[order]', 'Object', 'CONTROL') as Contr_Per 