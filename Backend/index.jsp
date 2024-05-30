<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>weather app</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
   </head>
<body>
    <% 
        try {
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "Dad@boss");
            
            if (con != null) {
               %>
               

    <div class="container">
        <div class="wrapper">
            <div class="img_section">
                <div class="default_info">
                    <h2 class="default_day">Thurday</h2>
                    <span class="default_date">9 may 2024 </span>
                    <div class="icons">
                        <img src="https://openweathermap.org/img/wn/10d@4x.png" alt="" />
                        <h2 class="weather_temp">22°C</h2>
                        <h3 class="cloudtxt">Overcast Clouds</h3>
                    </div>
                </div>
            </div>
            <div class="content_section">
                <form action="weather.jsp">
                    <input type="text"  id="search"  placeholder="Search Location" class="input_field" name="search" />
                    <input  type="submit" value="search">
                </form>
                <%
                    String cl=request.getParameter("search");
                PreparedStatement ps = con.prepareStatement("select * from wether1 where city=?");
                ps.setString(1, cl);
                ResultSet rs = ps.executeQuery();
                if (rs.next())
                {
                  
              
       %>

                <div class="day_info">
                    <div class="content">
                        <p class="title">NAME</p>
    
              <span class="value"><%= rs.getString("city") %></span>
                                  </div> 
                    <div class="content">
                        <p class="title">TEMP</p>
                        <span class="value"><%= rs.getString("temp") %>°C</span>
                    </div>
                    <div class="content">
                        <p class="title">HUMIDITY</p>
                        <span class="value"><%= rs.getString("humidity") %>%</span>
                    </div>
                    <div class="content">
                        <p class="title">WIND SPEED</p>
                        <span class="value"><%= rs.getString("wind") %>km/h</span>
                    </div>
                </div>

                <div class="list_content">
                    <ul>
                        <li>
                            <img src="https://openweathermap.org/img/wn/10d@2x.png" />
                            <span>fri</span>
                            <span class="day_temp"><%=rs.getString("day1") %>°C</span>
                        </li>
                        <li>
                            <img src="https://openweathermap.org/img/wn/10d@2x.png" />
                            <span>Sat</span>
                            <span class="day_temp"><%=rs.getString("day2") %>°C</span>
                        </li>
                        <li>
                            <img src="https://openweathermap.org/img/wn/10d@2x.png" />
                            <span>Sun</span>
                            <span class="day_temp"><%=rs.getString("day3")%>°C</span>
                        </li>
                        <li>
                            <img src="https://openweathermap.org/img/wn/10d@2x.png" />
                            <span>mon</span>
                            <span class="day_temp"><%=rs.getString("day4")%>°C</span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
       <%
                   
                } 
                else {
                    out.println("City not found");
                }
            }
            else {
                out.println("Connection not established");
            }
        } catch (Exception e) {
            out.println(e);
        }
    %>

             
</body>

</html>