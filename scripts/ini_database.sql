/*
====================================================================================================
CREATION DE LA BASE DE DONNEES DataWarehouse et ses schemas (bronze ; silver; gold)
====================================================================================================
Attention :
si vous executer ce script il va detruire la base de données DataWarehouse pour la recreer en suite
*/

USE master;
GO

-- suppresion et recreation de la base de données 'DataWarehouse'

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- CREATION DE LA BASE DE DONNEES 'DataWarehouse'

CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- CREATION DES SCHEMAS 

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
