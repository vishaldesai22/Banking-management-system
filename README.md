🏦 Banking Management System (Java + MySQL)

A simple Banking Management System built using Java, JDBC, and MySQL.
This project simulates real-world banking operations such as account creation, money transactions, and user authentication.

🚀 Features

👤 User Management

Register new users

Login with email & password

🏛 Bank Account Management

Open new bank accounts

Generate unique account numbers

💰 Banking Operations

Deposit (Credit) money

Withdraw (Debit) money

Transfer funds between accounts

Check account balance

🔒 Security

PIN-based protection for accounts

Password-based login authentication

🛠 Tech Stack

Java 17+ / JDK 23

MySQL 8.x

JDBC (mysql-connector-j)

IntelliJ IDEA / Eclipse (any Java IDE)

📂 Database Schema
users Table
Field	Type	Key
full_name	varchar(255)	
email	varchar(255)	PK
password	varchar(255)	
accounts Table
Field	Type	Key
account_number	bigint	PK
full_name	varchar(255)	
email	varchar(255)	UNI
balance	decimal(15,2)	
security_pin	char(4)	
⚡ How to Run

Clone this repository:

git clone https://github.com/your-username/banking-management-system.git
cd banking-management-system


Import into IntelliJ IDEA (or any IDE).

Add MySQL Connector JAR (mysql-connector-j-8.x.x.jar) to your classpath.

Update database credentials in BankingApp.java:

private static final String url = "jdbc:mysql://localhost:3306/banking_system";
private static final String username = "root";
private static final String password = "your_password";


Create the database schema:

CREATE DATABASE banking_system;
USE banking_system;

CREATE TABLE users (
    full_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) PRIMARY KEY,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE accounts (
    account_number BIGINT PRIMARY KEY,
    full_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    balance DECIMAL(15,2) NOT NULL,
    security_pin CHAR(4) NOT NULL
);


Run BankingApp.java and enjoy 🚀

🎯 Future Enhancements

Add transaction history

Support multiple accounts per user

Encrypt passwords & PINs

GUI frontend (JavaFX / Swing)

REST API layer with Spring Boot
