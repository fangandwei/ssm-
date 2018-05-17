<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>rA</title>
</head>
<body>
<% 
    request.setCharacterEncoding("UTF-8");
    response.setContentType("text/html; charset=UTF-8");
       
      String driverClass="com.mysql.jdbc.Driver";
      String url = "jdbc:mysql://localhost:3306/shop";
      String username = "root";
      String password = "1234";
       Class.forName(driverClass);
     Connection conn=DriverManager.getConnection(url, username, password);
     Statement stmt=conn.createStatement();
      String username1=request.getParameter("username");
      String sex=request.getParameter("sex");
      String kahao=request.getParameter("kahao");
      String tel=request.getParameter("tel");
     stmt.execute("insert into  yinhang(username,sex,kahao,tel) values('"+username1+"' , '"+sex+"', '"+kahao+"','"+tel+"')");
    stmt.close();
    conn.close();

response.sendRedirect("index.jsp");  
%>
</body>
</html>