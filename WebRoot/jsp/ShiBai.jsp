<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ShiBai.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<script type="text/javascript">
	
	  setInterval(function() {
	  	document.getElementById("a").innerHTML="1"
	  }, 1000)
	
	
	
	</script>

  </head>
  
  <body>
   
   <h2>您的操作有误，重新再来吧...<span id="a">2</span>秒后自动跳转..</h2>
   <%response.setHeader("refresh", "2,url=DengLu.jsp"); %>
   
   
   
  </body>
</html>
