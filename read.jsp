<%-- 
    Document   : read.jsp
    Created on : 30 Aug, 2024, 1:44:10 PM
    Author     : LENOVO
--%>
<%@ page import="java.sql.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
        table
        {
             padding: 35px;
             border-color: green;
        }
        p{
            font-size: 20PX;
        }
        </style>
    </head>
    <body>
        <% 
                   
                 Connection con = null;
        String url = "jdbc:mysql://localhost:3306/";
        String dbName = "bank";
        String driver = "com.mysql.jdbc.Driver";
        String userName = "root";
        String password = "";
        try {
            Class.forName(driver).newInstance();
            con = DriverManager.getConnection(url + dbName, userName, password);
            System.out.println("Connected to the database");
    } catch (Exception e) {
            e.printStackTrace();
        }
                String uname=request.getParameter("area");
                 PreparedStatement st=con.prepareStatement("select * from branch where num=?");
               		st.setString(1,uname);
                 ResultSet rs=st.executeQuery();
                         rs.next();

           
        %>
        <center><h1 style="color: #0099e6; font-size: 100px;">BANK OF INDIA</h1><br></center>
        <center><h1><%out.print(rs.getString(1)+" Branch");%></h1></center>
       <center> <table border="10px solid">
            <tr>
                <th>Email id</th>
                <th>Contact</th>
                <th>Address</th>
            </tr>
            <tr>
                <th><h1><%out.print(rs.getString(3));%></th>
                <th><h1><%out.print(rs.getString(2));%></th>
                <th><h1><%out.print(rs.getString(4));%></th>
            </tr>
        </table>
       <h1>SERVICES</h1>
       <P><%out.print(rs.getString(5));%></P>
       </center>
        
        
    </body>
</html>
