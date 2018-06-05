<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
       <form action="${pageContext.request.contextPath }/fabuzuoye.action" method="post">
               作业名称:<br>
       <textarea name="textarea1" cols="100" rows="5">
         <s:property value="#session.findbyname[0].hname"/>
       </textarea>
       <br>
               作业内容:<br>
       <textarea name="textarea2" cols="100" rows="20">
         <s:property value="#session.findbyname[0].text"/>
       </textarea>
        <input type="submit" value="发布作业">
       </form>    
</body>
</html>