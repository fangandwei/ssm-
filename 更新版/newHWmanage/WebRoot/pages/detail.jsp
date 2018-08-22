<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'detail.jsp' starting page</title>

  </head>
  <s:debug></s:debug>
  <body>
  <form action="${pageContext.request.contextPath }/catDetail.action" method="post">
       请输入老师名字<input type="text" name="name1"><br>
      <input type="submit" value="查询">
  
  </form>
       <h1 align="center">老师出的题</h1>
       <form action="${pageContext.request.contextPath }/tijiao.action" method="post">
      请在提交前手动输入作业名字<input type="text" name="hname"><br>
       <textarea name="textarea" cols="100" rows="20">
        
       <s:property value="#name1"  />
      
       </textarea>
        <input type="submit" value="提交作业">
       </form>
  </body>
</html>
