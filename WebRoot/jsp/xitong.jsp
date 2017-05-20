<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'xitong.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	
	<script type="text/javascript">
		 function getallbutton(){
		 var btns = document.getElementsByTagName("button");
		 for(var i=0;i<btns.length;i++){
		  alert(btns[i].id);
		 }
		}
     </script>
	
	
	

  </head>
  
  <body>
  
   <jsp:include page="index.jsp"></jsp:include>
  
   
  
   
   <div style="width:100%;height:600px;border:0px solid red;">
   <div style="width:200px;height:600px;border:0px solid red;float:left">
   <jsp:include page="left.jsp"></jsp:include>
   </div>
   
   <div style="width:900px;height:600px;border:0px solid red;float:right">
   
   <h4 style="text-align:center">ZaHuoPu系统说明文档</h4>
   
  </div>
   
   

   </div>
   
   <hr style="height:0.5px;background-color:gray;"/>
   
   <div style="border:0px solid red">
    <a href="jsp/index.jsp">
   <button style="background-color: blue;border-radius: 25px;width: 50px;height: 50px;
   margin-top:5px">

       <span style="color: white;font-size: 25px;">
       
      &lt;
       
       </span>

   </button>
   </a>
   <h2>This is my ZaHuoPu</h2>
   </div> 
  </body>
</html>
