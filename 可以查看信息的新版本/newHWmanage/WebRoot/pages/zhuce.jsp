<%@page import="java.util.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>按钮</title>
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.1.0/css/bootstrap.min.css">
  <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
  <script src="https://cdn.bootcss.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>		
	</head>
	<body class="container">
	<!-- 查老师信息   查出来放在学生注册页面 -->
		<%
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql:///test";
		String user = "root";
		String password = "1234";
		Connection c = DriverManager.getConnection(url, user, password);
		PreparedStatement pre = c.prepareStatement("select * from tea");
		ResultSet rs = pre.executeQuery();
		ArrayList namelist=new ArrayList();
		while (rs.next()) {
			String name = rs.getString("name");
			namelist.add(name);
		}
		request.setAttribute("namelist", namelist);
	%>
	<!--动态添加 checkbox-->
	<script type="text/javascript">
	var data = new Array();
	 <%  ArrayList list=(ArrayList)request.getAttribute("namelist");
	       for(int i=0;i<list.size();i++){%>
	              data[<%=i%>] = '<%=list.get(i)%>';
	      <%}
%> 
window.onload=function(){
     var mydiv=      document.getElementById("mydiv");
    var ul=document.createElement("ul");
    for(var i=0;i<data.length;i++){
        // 加入复选框
        var checkBox=document.createElement("input");
        
        checkBox.setAttribute("type","checkbox");
        checkBox.setAttribute("name", "teachers");
        checkBox.setAttribute("value", data[i]);

        var li=document.createElement("li");
        li.appendChild(checkBox);        
        li.appendChild(document.createTextNode(data[i]));
        ul.appendChild(li);        
    }    

    mydiv.appendChild(ul);
       

}
</script>
 <s:fielderror ><s:property value="error"/></s:fielderror>
	<form class="form-row" action="stuzhuce.action" method="post">
  <label for="email"> 姓名：</label>
  <input name="name" type="text" class="form-control" id="email">
   <label for="email1"> 学号：</label>
  <input name="studentId" type="text" class="form-control" id="email1">
   <label for="email2"> 密码：</label>
  <input name="password" type="password" class="form-control" id="email2">
   <label for="email3"> 班级：</label>
  <input name="classId" type="text" class="form-control" id="email3">
   <label for="email4"> 你学习的课程：</label>
  <input name="course" type="text" class="form-control" id="email4">
  <label for="email5"> 请选择你的老师：</label>
  <div id="mydiv" id="email5"></div>
  <button type="submit" class="form-control btn btn-success">注册</button>
</form>
</body>
</html>
