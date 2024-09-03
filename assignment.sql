--List all Books with it's Title, Price, Author Name, Publisher Name and Published Date

 SELECT b.Title, b.Price, a.Name Author, p.Name Publisher, b.PublishedDate from Book b
 JOIN Author a on a.ID = b.AuthorId
 JOIN Publication p on p.ID = b.PublicationId


--Get all books which are published in last 30 years
SELECT *
FROM Book
WHERE PublishedDate >= CURRENT_DATE - 2024;



-- Get total price of books written by parijat
SELECT SUM(b.Price) FROM Book b 
JOIN Author a on a.ID = b.AuthorId WHERE a.Name = 'Parijat';


-- Get all publishers in descending order with number of books published so far
SELECT p.Name, COUNT(*) as TotalBooks FROM Book b 
JOIN Publication p on p.ID = b.PublicationId GROUP BY p.Name ORDER BY TotalBooks DESC;


-- Get all authors with comma separated list of books they have written
SELECT a.Name, GROUP_CONCAT(b.Title) as Books FROM Book b 
JOIN Author a on a.ID = b.AuthorId GROUP BY a.Name ORDER BY a.Name;