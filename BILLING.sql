CREATE DATABASE BILLING;
USE BILLING;

CREATE TABLE invoices (
  bill_id INT,
  order_code INT,
  bill_date DATE,
  bill_amount DECIMAL(10, 2),
  tax_percent DECIMAL(5, 2),
  total_bill DECIMAL(10, 2),
  payment_status VARCHAR(20),
  billed_by VARCHAR(50),
  due_on DATE,
  notes TEXT
);

ALTER TABLE invoices ADD tax_id_no VARCHAR(50), ADD payment_method VARCHAR(20), ADD refund_status VARCHAR(20), ADD reference_number VARCHAR(100);

SELECT * FROM invoices;

ALTER TABLE invoices RENAME COLUMN bill_amount TO base_amount;

ALTER TABLE invoices RENAME COLUMN tax_percent TO tax_rate;

ALTER TABLE invoices RENAME COLUMN billed_by TO issuer_name;

ALTER TABLE invoices RENAME COLUMN bill_date TO invoice_date;

ALTER TABLE invoices MODIFY base_amount DECIMAL(12, 2);

ALTER TABLE invoices MODIFY tax_rate DECIMAL(6, 2);

ALTER TABLE invoices MODIFY total_bill DECIMAL(12, 2);

ALTER TABLE invoices
MODIFY payment_status VARCHAR(30);
