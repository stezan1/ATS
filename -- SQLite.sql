-- SQLite
DROP TABLE Author;
DROP TABLE Publisher;
DROP TABLE Book;

-- Tables for bookStore
-- Book (Id (Pk), Title, PublishDate, Price, Edition, ISBN , Genre, PublicationId, AuthorId)
--Publication (Id (Pk), Name, Address, Established)
-- Author (Id (Pk), Name, Address, Phone, Gender, Education)


create table Author
(
    Id Integer PRIMARY KEY AUTOINCREMENT,
    Name text,
    Address text,
    Phone text,
    Gender text,
    Education text
);

INSERT INTO Author
VALUES (null, 'Yaswant kenetkar', 'kathmandu', '98264646736', 'Male', 'MSc CS')

SELECT * FROM Author;


create table Publication
(
    Id Integer PRIMARY KEY AUTOINCREMENT,
    Name text,
    Address text,
    Established text
);

INSERT INTO Publication
VALUES (null, 'Chandan Publication', 'kathmandu', '2080/02/08')

select * from Publication


create table Book
(
    Id Integer PRIMARY KEY AUTOINCREMENT,
    PublishDate text,
    Price text,
    Edition text,
    ISBN text,
    Genre text,
    PublicationId INTEGER,
    AuthorId INTEGER,
    FOREIGN KEY (PublicationId) REFERENCES Publication(Id),
    FOREIGN KEY (AuthorId) REFERENCES Author(Id)

);

INSERT INTO Book
VALUES (null, '2080/02/08', '1000', '1st', '1234567890', 'Science', 1, 1);

SELECT * FROM Book;

