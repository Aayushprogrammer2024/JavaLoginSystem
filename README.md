# Java Web Application with User Authentication

This is a fully functional **Java web application** that demonstrates user registration, login, and password recovery functionality using JSP, Servlets, and MySQL database.

---

## Features

- ✅ User Registration: Allows new users to create an account.  
- ✅ User Login: Secure login system with username and password.  
- ✅ Forgot Password: Users can reset their password using their registered email.  
- ✅ MySQL Database: Stores user information securely.

---

## Technologies Used

- Java (JSP & Servlets)  
- MySQL  
- HTML & CSS  
- Apache Tomcat

---

## Getting Started

### Prerequisites

- Java JDK installed  
- Apache Tomcat server (or any compatible servlet container)  
- MySQL Server installed and running  
- Git (optional, for cloning repository)

### Setup Instructions

### 1. Clone the repository:

    ```bash
    git clone https://github.com/your-username/your-repo-name.git
   
### 2.Import the project into your Java IDE (Eclipse, IntelliJ, etc.)
### 3. Configure MySQL database:

i. Create a database named your_database_name.

ii. Create the users table with the following columns:
   
    ```bash
   id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(50),
    password VARCHAR(50)```
     ---

### 3.Update your database connection details in the project (usually in DBConnection.java).

- Deploy the project to Tomcat:

- Build and export the project as a WAR file.

- Copy the WAR file to Tomcat’s webapps folder.

- Start Tomcat server.

i. Open your browser and go to:

ii. http://localhost:8080/your-app-name/

iii. Update your database connection details in the project (usually in DBConnection.java).

### 4. Deploy the project to Tomcat

- Build and export the project as a WAR file.

- Copy the WAR file to Tomcat’s webapps folder.

- Start the Tomcat server.

### 5. Open the application
     ```bash

     Open your browser and navigate to:

     http://localhost:8080/your-app-name/

