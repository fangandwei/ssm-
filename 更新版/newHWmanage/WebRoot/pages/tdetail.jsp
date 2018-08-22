<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'detail.jsp' starting page</title>

  </head>
  <s:debug></s:debug>
  <body>
  <form action="${pageContext.request.contextPath }/TfinddetailS.action" method="post">
       请输入学生名字<input type="text" name="sname"><br>
      <input type="submit" value="查询">
    
    <table border="1">
     <tr>
			<th>完成情况</th>
			<th>学生答案</th>
		</tr>
           <s:iterator value="#session.catdetail" var="list1">
		<tr>
			
				<s:if test="#list1.state==1">
				<td>已经完成</td>
				</s:if>
				<s:if test="#list1.state!=1">
				<td>未完成</td>
				</s:if>
			    <td><s:property value="#list1.mytext" /></td>
		</tr>
          </s:iterator>
	</table>
  </form>
  </body>
</html>
