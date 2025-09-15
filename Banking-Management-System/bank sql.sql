CREATE DATABASE IF NOT EXISTS banking_system;
USE banking_system;

-- Accounts table
CREATE TABLE IF NOT EXISTS accounts (
    account_number BIGINT PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    balance DECIMAL(10,2) NOT NULL,
    security_pin CHAR(4) NOT NULL
);

-- User table
CREATE TABLE IF NOT EXISTS user (
    full_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) PRIMARY KEY,
    password VARCHAR(255) NOT NULL
);
ALTER TABLE accounts
ADD CONSTRAINT fk_accounts_user
FOREIGN KEY (email) REFERENCES users(email)
ON DELETE CASCADE;
ALTER TABLE accounts MODIFY balance DECIMAL(15,2);

