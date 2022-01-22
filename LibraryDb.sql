CREATE DATABASE Librarydb

USE Librarydb

CREATE TABLE Books(
Id int primary key identity,
Name nvarchar(25) NOT NULL unique,
Author nvarchar(25) NOT NULL,
Price float NOT NULL,
CreatedAt datetime default GETDATE(),
UpdatedAt datetime default GETDATE(),
CreatedBy nvarchar(50),
UpdatedBy nvarchar(50)
)

DROP TABLE Books

INSERT INTO Books (Name, Author, Price, CreatedBy, UpdatedBy)
Values ('A tale of two cities', 'Charlies Dickens', 12, 'E.Karimov', 'E.Karimov'), ('Chess', 'Zweig', 9, 'E.Karimov', 'E.Karimov'), ('La chute', 'Albert Camus', 11, 'E.Karimov', 'E.Karimov'), ('Uvercinka', 'Cemal Sureya', 13, 'E.Karimov', 'E.Karimov')

--TRUNCATE Table Books

SELECT * FROM Books
WHERE Author LIKE '%c%'

SELECT * FROM Books
WHERE Price<10
ORDER BY NAME 

SELECT * FROM Books
ORDER BY NAME DESC