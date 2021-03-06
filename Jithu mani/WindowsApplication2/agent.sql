/*
   Friday, October 25, 201310:53:38 PM
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
CREATE TABLE dbo.Tmp_agent
	(
	username varchar(50) NOT NULL,
	password varchar(50) NOT NULL,
	code int NOT NULL,
	name varchar(50) NOT NULL,
	address varchar(50) NOT NULL,
	city varchar(50) NOT NULL,
	phoneno varchar(50) NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Tmp_agent SET (LOCK_ESCALATION = TABLE)
GO
IF EXISTS(SELECT * FROM dbo.agent)
	 EXEC('INSERT INTO dbo.Tmp_agent (username, password)
		SELECT username, password FROM dbo.agent WITH (HOLDLOCK TABLOCKX)')
GO
DROP TABLE dbo.agent
GO
EXECUTE sp_rename N'dbo.Tmp_agent', N'agent', 'OBJECT' 
GO
COMMIT
select Has_Perms_By_Name(N'dbo.agent', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.agent', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.agent', 'Object', 'CONTROL') as Contr_Per 