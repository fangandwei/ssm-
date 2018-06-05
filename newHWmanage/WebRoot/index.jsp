<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>首页</title>
	
<!-- 	<link rel="stylesheet" type="text/css" href="styles.css"> -->
	
  </head>
  <body>
  <s:fielderror ><s:property value="error"/></s:fielderror>
       
  
   <form action="login.action" method="post">
                     请自选身份进行登陆<br>
       <select name="select" >
                  <option id="1">学生登录</option>
                  <option id="2">老师登录</option>
        </select><br><br>
      

      用户名：  <input type="text" name="name" ><br>
       密&nbsp&nbsp&nbsp码：<input  type="password" name="password"><br>
      <input type="submit" value="登录">
      
   </form>
   
   <a href="${pageContext.request.contextPath }/pages/zhuce.jsp">学生注册</a>
   <a href="${pageContext.request.contextPath }/pages/teacherzhuce.jsp">老师注册</a>
  </body>
</html>
