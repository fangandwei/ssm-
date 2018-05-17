<%@ page language="java"  import="java.sql.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
      String driverClass="com.mysql.jdbc.Driver";
      String url = "jdbc:mysql://localhost:3306/shop";
      String username = "root";
      String password = "1234";
Class.forName(driverClass);
Connection conn=DriverManager.getConnection(url, username, password);
Statement stmt=conn.createStatement();
request.setCharacterEncoding("UTF-8");
    response.setContentType("text/html; charset=UTF-8");
     String username1=request.getParameter("username");
            ResultSet rs=  stmt.executeQuery("select * from yinhang where username='"+username1+"'");
    
     out.print("<table border='2' ><tr><td>用户名</td><td>性别</td><td>银行卡号</td><td>联系方式</td>");
   while(rs.next()){
                String bhh=rs.getString(1);
    	        String bh=rs.getString(3);
				out.println("<tr><td>"+rs.getString(2)+"</td><td>"+bh+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td><a href='upd.jsp?x="+bhh+"'>更新</a></td><td><a href='dele.jsp?x="+bhh+"'>删除</a></td>");
			}
			
        out.print("</table>");
        
      //new String(request.getParameter(“”).getBytes(“iso-8859-1”), “utf-8”) 

stmt.close();
conn.close();

%>
   


           <a href="index.jsp">回到首页</a>  
           <a href="find.jsp">回到查询页面</a>
</body>
</html>