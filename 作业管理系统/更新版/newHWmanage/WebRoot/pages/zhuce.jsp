<%@page import="java.util.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 查老师信息   查出来放在学生注册页面 -->
		<%
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql:///test";
		String user = "root";
		String password = "123456";
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
	<form action="stuzhuce.action" method="post">
		姓名：<input type="text" name="name"><br> 学号：<input
			type="text" name="studentId"><br> 密码：<input
			type="password" name="password"><br> 班级： <input
			type="text" name="classId"><br> 你学习的课程：<input
			type="text" name="course"><br>
		<%--  ${requestScope.name} --%>
	       请选择你的老师：<br><br>
          <div id="mydiv"></div>
		<input type="submit" value="注册">
		
	</form>
</body>

</html>