-- Create Database
CREATE DATABASE Tutorial;

-- Droping a Database 
CREATE DATABASE testDB;
SHOW DATABASES;
DROP DATABASE testDB;
SHOW DATABASES; 

USE Tutorial;

-- Creating a Table
CREATE TABLE Persons (
    PersonaID int,
    LastName varchar(255),
    Firstname VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255)
);


CREATE TABLE LANGUAGES (
    LangID int,
    LangName VARCHAR(255),
    CountryOfOrigin varchar(255)
);

CREATE TABLE LanguagesTaken AS
    SELECT LastName, Firstname, LangID
    FROM Persons, LANGUAGES;

DESC LanguagesTaken;

--DROP TABLE 

DROP TABLE LanguagesTaken;

--TRUNCATE TABLE removes data in te Table not the table 
TRUNCATE TABLE Languages;

--Alter Tables
-- ALTER TABLE is used to ADD, DELETE and Modify Columns 
-- ALTER TABLE Is used to add and drop Constraints

---Add Column 
ALTER TABLE Persons
ADD Email VARCHAR(255);

--Drop column
ALTER TABLE Languages
DROP COLUMN CountryOfOrigin;


