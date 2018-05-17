<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'reallyUpd.jsp' starting page</title>
   

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
        String y=request.getParameter("id");
     String username1=request.getParameter("username");
      String sex=request.getParameter("sex");
      String kahao=request.getParameter("kahao");
      String tel=request.getParameter("tel");


stmt.executeUpdate("update  yinhang set username='"+username1+"'  , sex='"+ sex+ "' where id='"+y+"'   ");


stmt.close();
conn.close();


response.sendRedirect("index.jsp");
%>
  
  
  
  
    This is my JSP page. <br>
  </body>
</html>
