USE bookrepository;
INSERT INTO Users (UserID, FirstName, LastName, Emaillogin, Passwordhash, AccountMadeDate, AccountClosingDate)
VALUES (1, 'Nikitta', 'Weston', 'Nikittaweston@gmail.com', 'iloveu','2023-10-15','2024-10-15');

INSERT INTO Authors (AuthorID, FirstName, LastName)
VALUES (10, 'John', 'Steinbeck' );

INSERT INTO Books (BookID, Title, AuthorID,BookGenreID,ISBN,Pyear,Cost,Length)
VALUES (1, 'East of Eden', 10,2,555030465, 2018,19.99,514 );

INSERT INTO BookGenre (BookGenreID, GenreName, BookID)
VALUES (2, 'FIction', 1 );

INSERT INTO BooksRead (BooksReadID, UserID, BookID,DateRead,ReviewDate,ReviewText,Rating)
VALUES (2, 1, 1,'2023-10-15','2023-10-16',"very good",5 );

-- SELECT FirstName, Email
-- FROM Users;

-- DELETE FROM Books
-- WHERE PuYear = 2020;

-- UPDATE BookGenre 
-- SET FirstName = 'Penny', LastName = "Worth"
-- WHERE BookGenreID = 1;
 SELECT 
    Orders.OrderID,
    Orders.OrderDate,
    Customers.CustomerName,
    Customers.Email
FROM
    Orders
JOIN
    Customers
ON
    Orders.CustomerID = Customers.CustomerID;
SELECT
    BooksRead.Rating,
    BooksRead.BooksReadID,
    Users.Firstname,
    Users.UserID
FROM
  BooksRead
Join
 Users
ON
    
