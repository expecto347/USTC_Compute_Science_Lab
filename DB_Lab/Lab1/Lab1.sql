INSERT INTO Book
(`ID`, `name`, `author`, `price`) 
VALUES 
('000001', 'Book1', 'Author1', 0.1),
('000002', 'Book2', 'Author2', 0.2),
('000003', 'Book3', 'Author3', 0.3),
('000004', 'Book4', 'Author4', 0.4),
('000005', 'Book5', 'Author5', 0.5),
('000006', 'Book6', 'Author6', 0.6),
('000007', 'Book7', 'Author7', 0.7),
('000008', 'Book8', 'Author8', 0.8),
('000009', 'Book9', 'Author9', 0.9),
('000010', 'Book10', 'Author10', 1.0);

INSERT INTO Reader
(`ID`, `name`, `age`, `address`)
VALUES
('R00001', 'John', 20, '123 Main St.'),
('R00002', 'Mary', 25, '456 Oak Ave.'),
('R00003', 'Tom', 30, '789 Pine Blvd.'),
('R00004', 'Jane', 35, '1011 Cedar Dr.'),
('R00005', 'Mike', 40, '1213 Elm Ct.'),
('R00006', 'Sue', 45, '1415 Walnut Pl.'),
('R00007', 'Bill', 50, '1617 Spruce Ave.'),
('R00008', 'Ann', 55, '1819 Maple St.'),
('R00009', 'Bob', 60, '2021 Oak Dr.'),
('R00010', 'Kate', 65, '2223 Pine Ct.');

INSERT INTO Borrow
(`book_ID`, `reader_ID`, `borrow_Date`, `return_Date`)
VALUES
('000001', 'R00001', '2022-03-01', '2022-03-15'),
('000002', 'R00002', '2022-03-02', '2022-03-16'),
('000003', 'R00003', '2022-03-03', NULL),
('000004', 'R00004', '2022-03-04', NULL),
('000005', 'R00005', '2022-03-05', NULL),
('000006', 'R00006', '2022-03-06', NULL),
('000007', 'R00007', '2022-03-07', '2022-03-17'),
('000008', 'R00008', '2022-03-08', NULL),
('000009', 'R00009', '2022-03-09', NULL),
('000010', 'R00010', '2022-03-10', NULL),
('000001', 'R00002', '2022-03-18', NULL),
('000002', 'R00003', '2022-03-19', NULL),
('000007', 'R00008', '2022-03-19', NULL);

-- Update Reader ID 
DELIMITER //

CREATE PROCEDURE updateReaderID(
  IN old_ID CHAR(8),
  IN new_ID CHAR(8)
)
BEGIN
  DECLARE OLD_NAME VARCHAR(10);
  DECLARE OLD_AGE INT;
  DECLARE OLD_ADDRESS VARCHAR(20);

  -- Check if the old ID exists
  SELECT COUNT(*) INTO OLD_NAME FROM Reader WHERE ID = old_ID;
  IF (OLD_NAME = 0) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'The old ID does not exist.';
  END IF;

  -- Check if the new ID exists
  SELECT COUNT(*) INTO OLD_NAME FROM Reader WHERE ID = new_ID;
  IF (OLD_NAME > 0) THEN
    SIGNAL SQLSTATE '45001' SET MESSAGE_TEXT = 'The new ID already exists.';
  END IF;

  -- INSERT THE NEW ID INTO READER
  SELECT `name`, `age`, `address` INTO OLD_NAME, OLD_AGE, OLD_ADDRESS FROM Reader WHERE ID = old_ID;
  INSERT INTO Reader
  (`ID`, `name`, `age`, `address`)
  VALUES
  (new_ID, OLD_NAME, OLD_AGE, OLD_ADDRESS);

  -- UPDATE THE BORROW TABLE
  UPDATE Borrow SET reader_ID = new_ID WHERE reader_ID = old_ID;

  -- UPDATE THE RESERVE TABLE
  UPDATE Reserve SET reader_ID = new_ID WHERE reader_ID = old_ID;

  -- DELETE THE OLD ID FROM READER
  DELETE FROM Reader WHERE ID = old_ID;
END //

DELIMITER ;

-- borrowBook
DELIMITER //

CREATE PROCEDURE borrowBook(
  IN bookID CHAR(8),
  IN readerID CHAR(8),
  IN borrowDate DATE
)
BEGIN
  DECLARE taken_books INT DEFAULT 0;
  DECLARE reserved_by_other INT DEFAULT 0;
  DECLARE has_reserved INT DEFAULT 0;
  DECLARE status_ INT DEFAULT 0;
  DECLARE has_taken INT DEFAULT 0;
  DECLARE exists_ INT DEFAULT 0;

  -- Check if the book exists
  SELECT COUNT(*) INTO exists_ FROM Book WHERE ID = bookID;
  IF (exists_ = 0) THEN
    SIGNAL SQLSTATE '45004' SET MESSAGE_TEXT = 'This book does not exist.';
  END IF;

  -- Check if the reader exists
  SELECT COUNT(*) INTO exists_ FROM Reader WHERE ID = readerID;
  IF (exists_ = 0) THEN
    SIGNAL SQLSTATE '45005' SET MESSAGE_TEXT = 'This reader does not exist.';
  END IF;

  -- Check if the reader has borrowed 3 books already
  SELECT COUNT(*) INTO taken_books FROM Borrow WHERE reader_ID = readerID AND return_Date IS NULL;
  IF (taken_books >= 3) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'You have borrowed the maximum number of books allowed.';
  END IF;

  -- Check if the book has been taken by another reader
  SELECT COUNT(*) INTO has_taken FROM Borrow WHERE book_ID = bookID AND return_Date IS NULL;
  IF (has_taken > 0) THEN
    SIGNAL SQLSTATE '45001' SET MESSAGE_TEXT = 'This book has been taken by another reader.';
  END IF;

  -- Check if the book has been reserved by another reader
  SELECT COUNT(*) INTO reserved_by_other FROM Reserve WHERE book_ID = bookID AND reader_ID = readerID AND take_Date IS NULL;
  SELECT `status` INTO status_ FROM Book WHERE ID = bookID;
  IF (reserved_by_other = 0 AND status_ = 2) THEN
    SIGNAL SQLSTATE '45002' SET MESSAGE_TEXT = 'This book has been reserved by another reader.';
  ELSE
    DELETE FROM Reserve WHERE book_ID = bookID AND reader_ID = readerID;
  END IF;

  -- Insert borrow record and update book status
  INSERT INTO Borrow(book_ID, reader_ID, borrow_Date) VALUES(bookID, readerID, borrowDate);
  UPDATE Book SET `status` = 1, borrow_Times = borrow_Times + 1 WHERE ID = bookID;
  
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE returnBook(
  IN bookID char(8), 
  IN readerID char(8),
  IN returnDate DATE
)
BEGIN
    DECLARE borrowID char(10);
    DECLARE borrowDate DATE;
    DECLARE borrowedCount INT;
    DECLARE reserved_num INT;
    
    -- 1. Lookup borrow table to find returnDate_ and borrowDate
    SELECT borrow_Date INTO borrowDate
    FROM Borrow 
    WHERE book_ID = bookID AND reader_ID = readerID AND return_Date IS NULL;
    
    IF borrowDate IS NULL THEN
      SIGNAL SQLSTATE '45006' SET MESSAGE_TEXT = 'This book has not been borrowed by this reader.';
    ELSE
        -- 2. Update borrow table
        UPDATE Borrow SET return_Date = returnDate WHERE book_ID = bookID AND reader_ID = readerID;

        -- 3. Lookup book table, update book table's status and times
        UPDATE Book SET `borrow_Times` = `borrow_Times` + 1 WHERE ID = bookID;
        SELECT COUNT(*) INTO reserved_num FROM Reserve WHERE book_ID = bookID;
        IF(reserved_num = 0) THEN
          UPDATE Book SET `status` = 0 WHERE ID = bookID;
        ELSE
          UPDATE Book SET `status` = 2 WHERE ID = bookID;
        END IF;
        
        -- 4. Print message
        SELECT 'Book return succeeded!' AS message;
    END IF;
END //

DELIMITER ;

DELIMITER //

CREATE TRIGGER book_reserve_trigger 
AFTER INSERT ON Reserve 
FOR EACH ROW 
BEGIN
    UPDATE Book
    SET status = 2, reserve_Times = reserve_Times + 1
    WHERE ID = NEW.book_ID;
END;

CREATE TRIGGER book_reserve_cancel_trigger 
AFTER DELETE ON Reserve 
FOR EACH ROW 
BEGIN
    UPDATE Book
    SET reserve_Times = reserve_Times - 1
    WHERE ID = OLD.book_ID;
END;

CREATE TRIGGER book_borrow_trigger 
AFTER INSERT ON Borrow 
FOR EACH ROW 
BEGIN
    IF NEW.reader_ID IN (SELECT reader_ID FROM Reserve WHERE book_ID = NEW.book_ID) THEN
        UPDATE Book
        SET reserve_Times = reserve_Times - 1
        WHERE ID = NEW.book_ID;
    END IF;
END; //

DELIMITER ;

-- 查询读者 Rose 借过的读书(包括已还和未还)的图书号、书名和借期;
SELECT Book.ID, Book.name, Borrow.borrow_Date
FROM (Borrow JOIN Book ON Borrow.book_ID = Book.ID) JOIN Reader ON Borrow.reader_ID = Reader.ID
WHERE Reader.name = 'Rose';

-- 查询从没有借过图书也从没有预约过图书的读者号和读者姓名;
SELECT Reader.ID, Reader.name
FROM Reader
WHERE Reader.ID NOT IN (SELECT reader_ID FROM Borrow) AND Reader.ID NOT IN (SELECT reader_ID FROM Reserve);

-- 查询被借阅次数最多的作者(注意一个作者可能写了多本书);
SELECT Book.author, COUNT(*) AS borrow_times
FROM Borrow JOIN Book ON Borrow.book_ID = Book.ID
GROUP BY Book.author
ORDER BY borrow_times DESC
LIMIT 1;

-- 查询目前借阅未还的书名中包含“MySQL”的的图书号和书名：
SELECT Book.ID, Book.name
FROM Borrow JOIN Book ON Borrow.book_ID = Book.ID
WHERE Book.name LIKE '%MySQL%' AND Borrow.return_Date IS NULL;

-- 查询借阅图书数目超过 10 本的读者姓名;
SELECT Reader.name
FROM Borrow JOIN Reader ON Borrow.reader_ID = Reader.ID
GROUP BY Reader.ID
HAVING COUNT(*) > 10;

-- 查询没有借阅过任何一本 John 所著的图书的读者号和姓名;
SELECT Reader.ID, Reader.name
FROM Reader
WHERE Reader.ID NOT IN (SELECT reader_ID FROM Borrow JOIN Book ON Borrow.book_ID = Book.ID WHERE Book.author = 'John');

-- 查询 2022 年借阅图书数目排名前 10 名的读者号、姓名以及借阅图书数; 
SELECT Reader.ID, Reader.name, COUNT(*) AS borrow_times
FROM Borrow JOIN Reader ON Borrow.reader_ID = Reader.ID
WHERE YEAR(Borrow.borrow_Date) = 2022
GROUP BY Reader.ID
ORDER BY borrow_times DESC
LIMIT 10;

-- 创建一个读者借书信息的视图,该视图包含读者号、姓名、所借图书号、图书名和借期;
CREATE VIEW ReaderBorrowBook AS
SELECT Reader.ID, Reader.name, Borrow.book_ID, Book.name AS book_name, Borrow.borrow_Date
FROM Reader INNER JOIN Borrow ON Reader.ID = Borrow.reader_ID
INNER JOIN Book ON Borrow.book_ID = Book.ID;

-- 并使用该视图查询最近一年所有读者的读者号以及所借阅的不同图书数;
SELECT ReaderBorrowBook.ID, COUNT(DISTINCT ReaderBorrowBook.book_ID) AS book_count
FROM ReaderBorrowBook
WHERE Borrow_Date >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR)
GROUP BY ReaderBorrowBook.ID;
