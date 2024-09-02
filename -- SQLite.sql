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
VALUES (null, 'Sangam Publication', 'kathmandu', '2080/02/08')

select * from Publication
