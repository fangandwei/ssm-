<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>right</title>
</head>
<body>

	<table border="1">
	 <!-- homework.name ,stu.name ,homework.text ,homework.state -->
		<tr>
			<th>作业名称</th>
			<th>学生名字</th>
			<th>作业内容</th>
			<th>学生完成状态</th>
		</tr>
		<!-- value 里面取出来的值有几个就取几次 -->
           <s:iterator value="#session.findbyname" var="list" >
		<tr>
			
				<td><s:property value="#list.hname" /></td>
				<td><s:property value="#list.name" /></td>
				<td><s:property value="#list.text" /></td>
				<td><s:property value="#list.state"/></td>
		</tr>
          </s:iterator>
	</table>



</body>
</html>