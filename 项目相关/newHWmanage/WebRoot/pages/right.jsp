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
		<tr>
			<th>我的作业</th>
			<th>完成情况</th>
			<th>查看</th>
			<th>我的答案</th>
		</tr>
           <s:iterator value="#session.homeworks" var="list">
		<tr>
			
				<td><s:property value="#list.name" /></td>
				<td><s:property value="#list.state"/></td>
				<td><a href="${pageContext.request.contextPath}/catDetail.action" >老师的题</a></td>
			    <td><s:property value="#list.text1" /></td>
		</tr>
          </s:iterator>
	</table>



</body>
</html>