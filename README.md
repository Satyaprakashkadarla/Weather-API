# Weather Forecast Application

This is a **5-Day Weather Forecast Application** that provides developers and users with access to real-time and forecasted weather data for various locations worldwide. By leveraging Weather APIs, the application enhances user experience and functionality, allowing seamless integration of weather information into applications, websites, or services.

---

## Live Preview
🔗 **Live Link**: [Weather Forecast Application](weatherforecasting-api.netlify.app/)

---

## About
Weather APIs provide developers with access to real-time and forecasted weather data for various locations worldwide. These APIs enable developers to integrate weather information into their applications, websites, or services, enhancing user experience and functionality.

---

## Features
- Real-time weather updates for any location worldwide.
- 5-day weather forecast.
- Responsive and user-friendly interface.
- Search functionality for city-specific weather data.
- Logs user search history in SQL database.
- Built using robust backend logic powered by JSP and Java Servlets.

---

## Tech Stack
- **Frontend**: HTML, CSS, JavaScript
- **Backend**: JSP, Java Servlets
- **Database**: SQL
- **API Integration**: Weather API (e.g., OpenWeatherMap)

---

## How to Run

### Prerequisites
1. **Java-capable server**: Install Apache Tomcat or any equivalent server.
2. **SQL Database**: Install MySQL or any SQL database system.
3. **API Key**: Obtain a weather service API key (e.g., OpenWeatherMap).

### Steps to Run
```bash
# Clone the Repository
git clone https://github.com/your-repo-name/weather-forecast-app.git

# Import the Project
# Open the project in your preferred IDE (e.g., Eclipse, IntelliJ IDEA).

# Set Up SQL Database
# 1. Create a database in your SQL system.
# 2. Use the provided `database.sql` script to set up the necessary tables.

# Configure Database Details
# Update database connection details in the backend files (e.g., `dbconfig.jsp`):
# Example:
# String dbUrl = "jdbc:mysql://localhost:3306/weatherDB";
# String dbUser = "your_username";
# String dbPassword = "your_password";

# Update API Key
# Replace `YOUR_API_KEY` in the backend Java file (e.g., `WeatherServlet.java`) and frontend JavaScript file (`script.js`):
# Example:
# String apiKey = "YOUR_API_KEY";
# const apiKey = "YOUR_API_KEY";

# Deploy on Server
# Deploy the application on a Java-capable server like Apache Tomcat.

# Run the Application
# Access the application via a web browser at:
http://localhost:8080/weather-forecast-app

# Test the Application
# 1. Enter city names in the search bar to retrieve their respective 5-day weather forecasts.
# 2. Check the SQL database for logged search history.
