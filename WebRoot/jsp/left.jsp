<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'left.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<style type="text/css">
	
	.bug{
	
	border:none;
	background-color:white;
	height:50px;
	width:200px;
	border-bottom: 2px solid gray;
	
	}
	
	#bug{
	border:none;
	background-color:none;
	height:50px;
	width:200px;
	border-bottom: 2px solid gray;
	color:rgb(0,136,204);
	font-size:20px;
	border-radius:15px;
	
	
	
	}
	
	 .bug:LINK,.bug:VISITED{
        	background-color: rgb(195,213,253);
        	color: #00ff00;
        	text-decoration: none;
        }
       .bug:HOVER,.bug:ACTIVE{
        	
        	background-color: rgb(195,213,253);
        	border:1px solid rgb(195,213,253);
        	color:white;
        }
        
        
        .geng{
        
        border:0px solid red;
        width:200px;
        float:left;
        margin-top:50px;
        height:500px;
        visibility:hidden;
        }
	
	    #bug2{
	    
	    border:none;
		
		height:25px;
		width:200px;
		border-bottom: 2px solid gray;
		
	    
	    
	    }
	    
	    .hezi{
	    
	    border:1px solid gray;		
		height:200px;
		width:200px;
		margin-top:3px;
		
	     
	    }
	
	</style>
	
	<script type="text/javascript">
	
	function xian(){
	
	document.getElementById("geng").style.visibility="visible";
	}
	
	function yin(){
	
	document.getElementById("geng").style.visibility="hidden";
	
	}
	
	
	</script>
	
	
	
	
	
	

  </head>
  
  <body>
    
    <div style="width:410px;height:600px;border:1px solid gray;border-radius:15px">
    <div style="width:200px;height:600px;border:1px solid gray;float:left;">
        <button id="bug">系统设置</button>
        <button class="bug" onmousedown="xian()">更改主题</button>
        <button class="bug">更改主题</button>
        <button class="bug">更改主题</button>
        <button class="bug">更改主题</button>
        <button class="bug">更改主题</button>
        <button class="bug">更改主题</button>
        
    </div>
    
    <div class="geng" id="geng">
    
    <button id="bug2"> >> 更改主题</button>
    
    <div class="hezi" style="background-color:white;">
    <a href="jsp/Session.jsp?id=72">
      淡雅主题1         
    </a>
    <a href="jsp/Session.jsp?id=81">
      淡雅主题2           
    </a>
    <a href="jsp/Session.jsp?id=82">
      淡雅主题3          
    </a>
    <a href="jsp/Session.jsp?id=83">
      淡雅主题4          
    </a>
       <a href="jsp/Session.jsp?id=71">
      经典主题1          
    </a>
       <a href="jsp/Session.jsp?id=74">
      美丽主题1         
    </a>
     <a href="jsp/Session.jsp?id=75">
      性感主题1         
    </a>
     <a href="jsp/Session.jsp?id=76">
      运动主题1          
    </a>
     <a href="jsp/Session.jsp?id=77">
      美丽主题4          
    </a>
     <a href="jsp/Session.jsp?id=78">
      汽车主题1         
    </a>
    
    
    
    </div>
    
    <div class="hezi">
    <a href="jsp/Session.jsp?id=73">
              
               空白主题
    </a>
    </div>
    
    </div>
    </div>
      
          </body>
   </html>
