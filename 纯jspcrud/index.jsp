<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="UTF-8"%>
<html>
  <head>
    <title>SQL Server 2008</title>
  </head>
<body>
      <%
       request.setCharacterEncoding("UTF-8");
    response.setContentType("text/html; charset=UTF-8");
      
      
              out.print("--------------银行管理系统-------------")  ; 
              out.println(); 
              out.println(); 
              out.println();        
            
      String driverClass="com.mysql.jdbc.Driver";
      String url = "jdbc:mysql://localhost:3306/shop";
      String username = "root";
      String password = "1234";
      Class.forName(driverClass);
      Connection conn=DriverManager.getConnection(url, username, password);
      Statement stmt=conn.createStatement();
      
      ResultSet rs = stmt.executeQuery("select * from yinhang");
      
      out.print("<table border='2' ><tr><td>用户名</td><td>性别</td><td>银行卡号</td><td>联系方式</td><td>更新</td><td>删除</td></tr>");
               
      while(rs.next()){
                String bhh=rs.getString(1);
    	        String bh=rs.getString(3);
				out.println("<tr><td>"+rs.getString(2)+"</td><td>"+bh+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td><a href='upd.jsp?x="+bhh+"'>更新</a></td><td><a href='dele.jsp?x="+bhh+"'>删除</a></td>");
			}
			
        out.print("</table>");
		out.print("<a href='add.jsp'> 增加新银行用户 </a> ");
		out.print("<a href='find.jsp'> 查询</a> ");
        rs.close();
        stmt.close();
        conn.close();
      %>
</body>
</html>





















</html>
