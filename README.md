# MOBIPAY

MOBIPAY is a secure, web-based mobile money platform developed to simplify money transfers and digital transactions. Inspired by solutions like M-Pesa, MOBIPAY focuses on providing fast, safe, and time-efficient financial services tailored for communities in developing regions.

This project was developed as part of a Third-year BSc Information Systems project at the National University of Lesotho.

---

## Features

- Secure user registration and login
- Send and receive money
- Transaction history tracking
- Role-based access (user, agent, admin)
- Agent cash-in/cash-out support
- Simple admin monitoring dashboard

---

## Technologies Used

- **Frontend:** HTML, CSS, JavaScript
- **Backend:** PHP
- **Database:** MySQL
- **Server:** Apache via XAMPP

---

## Setup Instructions

### 1. Move Project to XAMPP

- Copy the MOBIPAY folder to:  
  `C:\xampp\htdocs\MOBIPAY`

### 2. Start Apache and MySQL

- Open the XAMPP Control Panel
- Start both **Apache** and **MySQL**

### 3. Import the Database

- Open `http://localhost/phpmyadmin`
- Create a database named `mobipay_db`
- Import the file `mobipay_db.sql` located inside the `database/` folder

### 4. Update Database Connection (If Needed)

- Open `db_connection.php`
- Confirm these settings:

```php
$host = "localhost";
$user = "root";
$password = "";
$database = "mobipay_db";

5. Run the App
Open your browser and go to:
http://localhost/MOBIPAY/

Folder Structure:
MOBIPAY/
├── login.php
├── signup.php
├── db_connection.php
├── transactions.php
├── database/
│   └── mobipay_db.sql
├── dashboard/
├── assets/
├── README.md

Future Improvements:
Password hashing for security
Mobile responsiveness
SMS/Email notifications
Two-factor authentication
Integration with real-world APIs

Developers:
Boitumelo Lekau
Rethabile Matela
Tsita Makhele

License
This project is for academic and educational purposes. You are free to modify and extend it for learning and development.
