<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>增加新用户</title>
</head>
<body>
    <form   action="reallyadd.jsp"  method="post">
              用户名  <input type="text"  name="username"/> 
               性别    <input  type="text"  name="sex"/>
               卡号 <input  type="text"  name="kahao"/>
              电话<input  type="text"   name="tel"  >
      <input type="submit" value="增加">
   </form>
</body>
</html>
