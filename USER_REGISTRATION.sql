CREATE DATABASE USER_REGISTRATION;
USE USER_REGISTRATION;

CREATE TABLE users (
  user_id INT,
  first_name VARCHAR(70),
  last_name VARCHAR(70),
  email_id VARCHAR(120),
  mobile VARCHAR(15),
  password_hash VARCHAR(255),
  address VARCHAR(250),
  city VARCHAR(70),
  state VARCHAR(70)
);

ALTER TABLE users
ADD country VARCHAR(70),
ADD last_login DATE,
ADD account_created DATE,
ADD profile_pic_url TEXT;

DESCRIBE users;

SELECT * FROM users;

ALTER TABLE users RENAME COLUMN mobile TO contact_number;

ALTER TABLE users RENAME COLUMN city TO user_city;

ALTER TABLE users RENAME COLUMN password_hash TO user_password;

ALTER TABLE users MODIFY first_name VARCHAR(100);

ALTER TABLE users MODIFY last_name VARCHAR(100);

ALTER TABLE users MODIFY email_id VARCHAR(180);

ALTER TABLE users MODIFY address VARCHAR(350);