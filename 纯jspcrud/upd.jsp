<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Insert title here</title>
</head>
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
           String y=request.getParameter("x");
           out.print("他是第"+y+"号");
            ResultSet rs =         stmt.executeQuery("select * from yinhang where id="+y);
            while(rs.next()){
                String bhh=rs.getString(1);
    	        String bh=rs.getString(3);
    	        out.print("原来数据");
    	         out.print("<table border='2' ><tr><td>用户名</td><td>性别</td><td>银行卡号</td><td>联系方式</td>");
				out.println("<tr><td>"+rs.getString(2)+"</td><td>"+bh+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>");
			    out.print("</table>");
			}
stmt.close();
conn.close();
%>

<br/>

想要改成<br/>
<body>
    <form   action="reallyUpd.jsp"  method="post">
    
      编号 <input type="text" name="id" >
              用户名  <input type="text"  name="username"/> 
               性别    <input  type="text"  name="sex"/>
               卡号 <input  type="text"  name="kahao"/>
              电话<input  type="text"   name="tel"  >
      <input type="submit" value="修改">
   </form>


</body>
</html>
