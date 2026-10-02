# Student Management System

A web-based Student Management System developed using Java Servlets, JSP, JDBC, and MySQL. The application provides a simple platform for managing student information with authentication and profile management features.

## 📌 Overview

The Student Management System is designed to perform basic student management operations through a web interface.

The application includes user authentication, student registration, profile management, student listing, updating and deleting student records, and logout functionality.

## 🚀 Features

- User Login
- Student Registration / Sign Up
- Session-based Authentication
- Dashboard
- View Student Profile
- Update Student Profile
- View Student Records
- Delete Student Records
- Forgot Password
- Logout
- MySQL Database Integration
- JDBC-based Database Connectivity

## 🛠️ Technologies Used

### Backend
- Java
- Java Servlets
- JDBC

### Frontend
- JSP
- HTML
- CSS
- JavaScript

### Database
- MySQL

### Server
- Apache Tomcat 10.1

### IDE
- Eclipse IDE

### Version Control
- Git
- GitHub

## 🏗️ Project Architecture

The project follows a layered structure:

```text
StudentManagementSystem
│
├── src
│   └── main
│       ├── java
│       │   └── com.studentapp
│       │       ├── conn
│       │       │   └── Connect.java
│       │       │
│       │       ├── dao
│       │       │   ├── StudentDao.java
│       │       │   └── StudentDaoImp.java
│       │       │
│       │       ├── dto
│       │       │   └── Studentdto.java
│       │       │
│       │       └── servlets
│       │           ├── Login.java
│       │           ├── SignUp.java
│       │           ├── Update.java
│       │           ├── Delete.java
│       │           ├── ViewStudent.java
│       │           ├── Logout.java
│       │           ├── forgotpassword.java
│       │           └── dashboard.java
│       │
│       └── webapp
│           ├── Login.jsp
│           ├── signup.jsp
│           ├── dashboard.jsp
│           ├── Profile.jsp
│           ├── Update.jsp
│           ├── viewstudents.jsp
│           ├── forgotpassword.jsp
│           │
│           └── WEB-INF
│               ├── lib
│               └── web.xml
│
└── README.md
