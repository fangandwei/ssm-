<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%
String y=request.getParameter("x");
out.print(y);
       
      String driverClass="com.mysql.jdbc.Driver";
      String url = "jdbc:mysql://localhost:3306/shop";
      String username = "root";
      String password = "1234";
Class.forName(driverClass);
Connection conn=DriverManager.getConnection(url, username, password);
Statement stmt=conn.createStatement();
stmt.executeUpdate("delete  from yinhang where id='"+y+"'");



stmt.close();
conn.close();

response.sendRedirect("index.jsp");
%>


</body>
</html>
