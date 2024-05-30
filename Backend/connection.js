<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
    String id = request.getParameter("id");
    String password = request.getParameter("password");
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "Dad@boss");
PreparedStatement stmt=con.prepareStatement("select * from main2 where id=? and password=?");
stmt.setString(1,id);
stmt.setString(2,password);
ResultSet rs=stmt.executeQuery();
if (rs.next())
{
response.sendRedirect("weather.jsp");
}
else{%>
<script>window.alert("Login not successfull");</script>
<%
    }
con.close();
}
catch (Exception ex) 
{
out.println(ex);
}
%>