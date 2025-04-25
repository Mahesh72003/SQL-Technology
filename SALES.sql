CREATE DATABASE SALES;
USE SALES;

CREATE TABLE transactions (
  transaction_id INT,
  customer_code INT,
  transaction_date DATE,
  delivery_address VARCHAR(200),
  city VARCHAR(50),
  state VARCHAR(50),
  total_cost DECIMAL(10, 2),
  payment_type VARCHAR(20),
  transaction_status VARCHAR(20),
  delivery_due_date DATE
);

ALTER TABLE transactions
ADD delivery_charges DECIMAL(6, 2),
ADD discount_given DECIMAL(6, 2),
ADD promo_code VARCHAR(20),
ADD updated_on DATE;

SELECT * FROM transactions;


ALTER TABLE transactions RENAME COLUMN transaction_date TO order_date;

ALTER TABLE transactions RENAME COLUMN city TO delivery_city;

ALTER TABLE transactions RENAME COLUMN state TO delivery_state;

ALTER TABLE transactions RENAME COLUMN total_cost TO subtotal;

ALTER TABLE transactions MODIFY subtotal DECIMAL(12, 2);

ALTER TABLE transactions MODIFY payment_type VARCHAR(30);

ALTER TABLE transactions MODIFY transaction_status VARCHAR(30);

ALTER TABLE transactions MODIFY promo_code VARCHAR(50);
