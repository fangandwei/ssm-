<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'detail.jsp' starting page</title>

  </head>
  
  <body>
       <h1 align="center">老师出的题</h1>
       <form action="${pageContext.request.contextPath }/tijiao.action" method="post">
       <textarea name="textarea" cols="100" rows="20">
         <s:property value="#session.homeworks[0].text"/>
       </textarea>
        <input type="submit" value="提交作业">
       </form>
  </body>
</html>
