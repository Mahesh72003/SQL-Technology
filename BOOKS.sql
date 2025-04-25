CREATE DATABASE BOOKS;
USE BOOKS;

CREATE TABLE book_inventory (
  book_code INT,
  book_name VARCHAR(100),
  author_name VARCHAR(50),
  publisher_name VARCHAR(50),
  edition_no VARCHAR(30),
  category VARCHAR(50),
  issued_to_id INT,
  issue_date DATE,
  return_due_date DATE,
  is_book_returned BOOLEAN
);

ALTER TABLE book_inventory ADD isbn_no VARCHAR(20), ADD shelf_number VARCHAR(20), ADD added_by_name VARCHAR(50), ADD added_on DATE;

SELECT * FROM book_inventory;

ALTER TABLE book_inventory RENAME COLUMN issued_to_id TO borrower_id;

ALTER TABLE book_inventory RENAME COLUMN book_name TO title;

ALTER TABLE book_inventory RENAME COLUMN author_name TO writer_name;

ALTER TABLE book_inventory RENAME COLUMN is_book_returned TO returned_status;

ALTER TABLE book_inventory MODIFY isbn_no VARCHAR(30);

ALTER TABLE book_inventory MODIFY shelf_number VARCHAR(30);

ALTER TABLE book_inventory MODIFY added_on DATE DEFAULT (CURDATE());

ALTER TABLE book_inventory
MODIFY title VARCHAR(200);
