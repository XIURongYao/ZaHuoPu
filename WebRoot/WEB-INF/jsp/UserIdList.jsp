<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'UserIdList.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<style type="text/css">
	
	.sankuangzi{
	
	border:1px solid gray;
	width:30%;
	height:400px;
	float:left;
	border-radius:15px;
	
	}
	
	
	</style>
	

  </head>
  
  <body>
    <jsp:include page="/jsp/index.jsp"></jsp:include> 
   <div style="border:0px solid red;width:100%;height:450px;">
    <div class="sankuangzi"></div>
    <div class="sankuangzi" style="width:39.5%">
    <h3>已进入操作员信息界面</h3>
    <table style="margin:auto;width:100%;height:80%;text-align:center;font-family: 黑体;border-radius:15px;"
     
    border="1px solid" cellspacing="0px">
   
   
   
          <tr style="text-align: center;">
          
          <td colspan="10"><h3>操作员</h3></td>
          
          </tr>
          <c:forEach items="${User}" var="user"> 
          <tr>
	          <td style="width:50%"> 
	           操作员编号：       
	          </td>         
	          <td> 
	          ${user.id}&nbsp;&nbsp;&nbsp;&nbsp;        
	          </td>          
          </tr>
          
           <tr>
	          <td> 
	           操作员账号：       
	          </td>         
	          <td>
	          ${user.userName}&nbsp;&nbsp;&nbsp;&nbsp;          
	          </td>          
          </tr>
          
           
          
           <tr>        
	          <td colspan="2">
	           <a href="http://localhost:8080/ZaHuoPu/UserUpdate2.jsp?id=${user.id}
	           &username=${user.userName}&password=${user.password}">修改密码</a>         
	          </td>          
          </tr>
     
     
          </c:forEach>
    
   </table>
   
   </div>
   
   
   <div class="sankuangzi"></div>
   
   
   </div>
   
   <hr/>
  </body>
</html>
