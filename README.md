                                                                 TRAVELEASE🌍✈️

LINK:  https://travelease-7lcm.onrender.com/


TRAVELEASE🌍✈️
  
Travelease ---->  Java + Spring Boot + JSP-based Travel Booking Web Application.

It provides itinerary details for Northeast India destinations, supports user authentication with BCrypt, integrates PayPal for payments and 
features a Botpress-powered chatbot for instant travel assistance.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
🚀 Features

🔐 User registration & login (passwords stored securely with BCrypt)

🗺️ Itinerary pages for different destinations (Agartala, Dawki, Tawang, etc.)

📍 State & city-wise travel information

💳 PayPal Sandbox integration for payments

📦 Booking system with success, failure & validation pages

📸 Gallery, reviews, and contact form

🎨 JSP + CSS for responsive frontend

🤖 Botpress-powered chatbot for instant travel assistance

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
🛠️ Tech Stack

Language: Java

Backend: Spring Boot, Spring MVC, Spring Security (BCrypt)

Frontend: JSP, CSS, JS

Database: MySQL with JPA/Hibernate

Payments: PayPal REST API (Sandbox Mode)

Build Tool: Maven

chatbot: Botpress

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
📂 Project Structure

src/main/java/com/example/travelease/

   ├─ config/           # Security & PayPal configuration
   
   ├─ controller/       # Controllers (Home, Itinerary, PayPal)
   
   ├─ model/            # Entities (User, Admin)
   
   ├─ repo/             # JPA Repositories
   
   └─ service/          # Business logic services

src/main/resources/

   ├─ application.properties
   
   ├─ static/           # css, js, images
   
   └─ templates/        # (optional for Thymeleaf later)

src/main/webapp/WEB-INF/views/

   ├─ itinerary/        # Destination-specific JSPs
   
   ├─ State/            # State-wise JSPs
   
   ├─ Navbar/final/     # Navbar & general JSPs
   
   ├─ PaymentGateway/   # Payment views
   
   ├─ Validation/       # Success & error views
   
   └─ index.jsp, login.jsp, Registration.jsp, etc.


----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
2️⃣ Configure Database (MySQL)

Create the database:

CREATE DATABASE travel;


Update src/main/resources/application.properties:

spring.datasource.url=jdbc:mysql://localhost:3306/travel

spring.datasource.username=root

spring.datasource.password=YOUR_DB_PASSWORD

spring.jpa.hibernate.ddl-auto=update

spring.jpa.show-sql=true

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
3️⃣ Configure PayPal Sandbox

paypal.client.id=YOUR_SANDBOX_CLIENT_ID

paypal.client.secret=YOUR_SANDBOX_SECRET

paypal.mode=sandbox

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
4️⃣ Run the application
mvn spring-boot:run


App will be running at:
👉 http://localhost:8081/


🔑 Default Routes

/login → Login Page

/register → Registration Page

/itinerary/{place} → Destination itinerary

/payment → Payment Home Page

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
🔒 Security

User passwords are hashed using BCrypt

Spring Security handles authentication and authorization

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
🤖 Chatbot Integration (Botpress)

Developed a conversational chatbot using Botpress.

Trained the bot with custom knowledge base (FAQs, travel info, booking queries).

Hosted the bot on Botpress Cloud and integrated it into the Travelease app via an embed link.

Provides real-time assistance to users for:

-->Destination details,Booking guidance,Payment queries,General support

Enhances the user experience by offering 24/7 automated travel assistance.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
✅ Future Improvements

JWT-based authentication(done)(soon will push in github)

Email booking confirmations

Docker support

Deployment on AWS / Heroku

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
📈 ✨✨✨✨✨ ✨✨✨✨ RECENTLY ADDED FEATURES AND IMPROVEMENTS✨✨✨✨✨✨✨✨✨✨✨

Added profile editing functionality.

Added password change feature.

Implemented Forgot Password using OTP.

Integrated Brevo SMTP for email delivery.

Improved authentication workflow.

Enhanced responsive design across devices.

Fixed multiple mobile UI issues.

Optimized navigation bar and footer responsiveness.

Improved search page layout.

Enhanced exception handling and validation.

Refactored authentication-related code.

Improved user experience with clearer validation and feedback messages.

Added production deployment configuration for Render.

Reduced lines of code.


