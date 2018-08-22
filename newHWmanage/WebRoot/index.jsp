<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>首页</title>
	
<!-- 	<link rel="stylesheet" type="text/css" href="styles.css"> -->
	   <style >
        html,body {
            margin: 0;
            padding: 0;
            background: url('xxbj.gif') no-repeat fixed;
            background-size: cover;
            -moz-background-size: cover;
            -webkit-background-size: cover;
            /* IE6-9 */
            filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='images/bg.png', sizingMethod=scale);
            -ms-filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='images/bg.png', sizingMethod=scale);
       
        }
    </style >
  </head>
  
  
  <body >
  
  
  
  <div align="left">
  
  <s:fielderror ><s:property value="error"/></s:fielderror>
       
  
   <form action="login.action" method="post">
                     请自选身份进行登陆<br>
       <select name="select" >
                  <option id="1">学生登录</option>
                  <option id="2">老师登录</option>
        </select> 
        <br/>
        <br/>
      

      用户名：  <input type="text" name="name" ><br>
       密&nbsp&nbsp&nbsp码：<input  type="password" name="password"><br>
      <input type="submit" value="登录">
      
   </form>
   
   <a href="${pageContext.request.contextPath }/pages/zhuce.jsp">学生注册</a>
   <a href="${pageContext.request.contextPath }/pages/teacherzhuce.jsp">老师注册</a>
      <!-- 需要维护作业和老师的关系 以及作业与学生的关系-->
   <a href="${pageContext.request.contextPath}/pages/tfabuzuoye.jsp" target="_blank">发布作业</a>
  </div>
  </body>
</html>
