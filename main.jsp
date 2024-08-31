<%-- 
    Document   : main.jsp
    Created on : 30 Aug, 2024, 9:16:58 AM
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
            input
            {
                width: 100px;
            }
            table
            {
                width:40%;
            }
            button
            {
                color:green;
                width: 60%;
            }
        </style>
    </head>
    <body>
        <center><h1 style="color: #0099e6;">BANK OF INDIA</h1><br></center>
                <center><h1 style="color: #0099e6;">OUR BRANCHES IN BENGALURU </h1><br></center>
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
               PreparedStatement st=con.prepareStatement("select num,area from branch ");
               	ResultSet rs=st.executeQuery();

        int i=1;
                %>
               <center> <table border="3px solid">
                    <%while(rs.next()){%>
                    <tr>
                    <th><h3><%out.print("Branch "+i++);%></h3></th>
                    <th>
                        <form action="read.jsp">
                            <input type="hidden" value=<%out.print(rs.getInt(1));%> name="area">
                            <button type="submit"><%out.print(rs.getString(2));%></button>
                            
                        </form>
                    </th>
                    </tr>
                    <%}%>
                </table></center>

    </body>
</html>
