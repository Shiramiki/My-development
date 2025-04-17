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

--Modify Column 
ALter Table Languages
MODIFY COLUMN LangID VARCHAR(100);

--Inserting data into tables 

INSERT INTO Persons (PersonaID, LastName, FirstName, Address, City) VALUES 
    (1, "Hansen", "Ola", "Timoteivn 10", "Sandnes"),
    (2, "Svendson", "Tove", "Borgvn 23", "Sandnes"),
    (3, "Pettersen", "Kari", "Storgt 20", "Stavanger");

Alter TAble Persons
add DateOfBirth date;

--CHange datatype
ALTER TABLE Persons
    MODIFY COLUMN DateOfBirth year;

CREATE TABLE Customer (
    CustomerID int,
    CustomerName VArchar(255),
    ContactName VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(255)
);

AlTER TABLE Customer
    ADD COLUMN
        City VARCHAR (100),
        PostalCode VARCHAR(100),
        Country VARCHAR(100);

-- Constraints 
--Can be specified when we create a table or with and ALTER TABLE statement
-- Specify rules of data in table 
-- Ensure the accuracy and reliability of the data
-- You can have column level or table level constrains
--commonly used constraints 
    -- NOT NULL - Ensures that a column cannot have a NULL value
    -- UNIQUE - Ensures that all values in a column are different
    -- PRIMARY KEY - A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table
    -- FOREIGN KEY - Prevents actions that would destroy links between tables
    -- CHECK - Ensures that the values in a column satisfies a specific condition
    -- DEFAULT - Sets a default value for a column if no value is specified
    -- CREATE INDEX - Used to create and retrieve data from the database very quickly

-- NOT NULL
    --Not Accept Null Values

ALTER TABLE Persons 
MODIFY PersonaID int NOT NULL;

--unique constraint
--Ensure that all values in column are different
-- UNIQUE constrains = PRIMARY KEY
--Primary Key Automatically has the UNIQUE Constraints 
-- 1 -Primary Key, Many UNIQUE Keys 

CREATE TABLE Schools (
    ID int NOT NULL,
    Name VARCHAR(255) NOT NULL,
    Address varchar(255) NOT NULL,
    UNIQUE (ID)  
);

USE Tutorial;
CREATE TABLE Children(
    ID int NOT NULL,
    LastName VARCHAR(255),
    FirstNAme vArchar(255),
    Age int,
    Constraint UC_Children UNIQUE (ID, LastName)
);

ALTER TABLE Children
DROP INdEX UC_Children;

--Primary Constraint 
    --identifies each record 
    -- can consist of a on or more fields 

ALTER TABLE  Persons
    ADD Primary KEY (PersonaID);

CREATE TAble Districts(
    ID int Not Null,
    NAme VARCHAR(255),
    Primary Key (ID)
)

ALTER TABLE Customer
ADD CONSTRAINT PK_Children PRIMAry KEy (customerID, CustomerName)

