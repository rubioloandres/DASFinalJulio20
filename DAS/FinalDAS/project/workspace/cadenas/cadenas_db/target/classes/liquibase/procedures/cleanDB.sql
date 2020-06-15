CREATE PROCEDURE cleanDB AS
BEGIN
    EXEC sp_MSforeachtable 'ALTER TABLE ? NOCHECK CONSTRAINT ALL'
    EXEC sp_MSforeachtable 'ALTER TABLE ? DISABLE TRIGGER ALL'
    EXEC sp_MSforeachtable 'DELETE FROM ?'
    EXEC sp_MSforeachtable 'ALTER TABLE ? CHECK CONSTRAINT ALL'
    EXEC sp_MSforeachtable 'ALTER TABLE ? ENABLE TRIGGER ALL'
    EXEC sp_MSforeachtable 'IF NOT EXISTS ( SELECT * FROM SYS.IDENTITY_COLUMNS JOIN SYS.TABLES ON SYS.IDENTITY_COLUMNS.Object_ID = SYS.TABLES.Object_ID WHERE SYS.TABLES.Object_ID = OBJECT_ID(''?'') AND SYS.IDENTITY_COLUMNS.Last_Value IS NULL ) AND OBJECTPROPERTY( OBJECT_ID(''?''), ''TableHasIdentity'' ) = 1 DBCC CHECKIDENT (''?'', RESEED, 0) WITH NO_INFOMSGS'
END
GO