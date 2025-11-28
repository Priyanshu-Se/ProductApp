ProductApp is a lightweight and beginner-friendly Spring Boot CRUD project that manages product information using a clean REST API architecture.
It demonstrates core concepts of Spring Boot, Spring MVC, Hibernate/JPA, and backend CRUD workflows typically asked in interviews.

🚀 Features
✅ Add Product

Create a new product by entering:

Name

Price

Description

✅ View Product

Fetch a single product using its ID.

✅ View All Products

Retrieve all stored products.

✅ Update Product

Modify product details like name, price, stock, etc.

✅ Delete Product

Remove a product by ID.

🧩 Tech Stack

Backend

Java

Spring MVC

Spring Data JPA / Hibernate

MySQL Database

Tools

Eclipse IDE

Maven

Git & GitHub

Postman (for API testing)

🗂️ Project Structure

ProductApp
 └── src
     └── main
         ├── java
         │    └── com.productapp
         │         └── controller
         │              ├── ProductController.java        <-- returns JSP views
         │
         ├── resources
         │    └── application.properties                 <-- view config
         │
         └── webapp
              ├── WEB-INF
              │     └── views
              │          ├── home.jsp                    <-- list all products
              │          ├── add.jsp                     <-- form to create product
              │          ├── update.jsp                  <-- update single product
              |          └── delete.jsp                  <-- delete single product

🎯 Purpose of the Project

The purpose of ProductApp is to help beginners and students learn:

How CRUD operations are implemented in Spring MVC

How service, repository, and controller layers work

How to connect Spring MVC to MySQL

How to build APIs commonly used in most Java projects

How to structure a real-world backend project

How to push projects to GitHub professionally

📌 How to Run

1. Clone the repository
   
git clone <your-repo-url>

3. Create database
   
CREATE DATABASE productdb;

5. Update configuration
   
In application.properties:

spring.datasource.username=YOUR_USERNAME

spring.datasource.password=YOUR_PASSWORD

7. Run the application

   Right click on project -> Run as -> 1 Run on server -> click on server -> finish

9. Test APIs using Postman
    
Example endpoints:

POST   /products

GET    /products/{id}

GET    /products

PUT    /products/{id}

DELETE /products/{id}

🎉 Conclusion

ProductApp is a perfect starter full-stack backend project built with Spring Boot.
It shows clean code structure, real-world CRUD operations, and serves as a solid portfolio project for students and Java developers.
