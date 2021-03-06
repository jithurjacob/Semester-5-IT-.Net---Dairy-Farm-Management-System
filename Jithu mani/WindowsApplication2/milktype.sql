/*
   Saturday, October 26, 201312:46:01 AM
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
CREATE TABLE dbo.milktype
	(
	code int NOT NULL,
	pr_name varchar(50) NOT NULL,
	rate int NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.milktype SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.milktype', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.milktype', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.milktype', 'Object', 'CONTROL') as Contr_Per 