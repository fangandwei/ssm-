<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>按钮</title>
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.1.0/css/bootstrap.min.css">
  <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
  <script src="https://cdn.bootcss.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>		
	</head>
	<body class="container">
	<s:fielderror ><s:property value="error"/></s:fielderror>
<form class="form-row" action="Tzhuce.action" method="post">
  <label for="email"> 姓名：</label>
  <input name="name" type="text" class="form-control" id="email">
   
   <label for="email2"> 密码：</label>
  <input name="password" type="password" class="form-control" id="email2">
 
<label for="email1"> 学校：</label>
  <input name="schoolname" type="text" class="form-control" id="email1">

  <label for="email3"> 班级(班主任老师填)：</label>
<input name="classname" type="text" class="form-control" id="email3">
 
<button type="submit" class="form-control btn btn-success">注册</button>
  </form>
</html>