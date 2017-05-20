<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'bottom.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	 <style>

        div{
            border: 0px solid red;
            width: 100%;
            height: 100px;
            text-align: center;
            color: gray;
           /**background-color: rgb(215,223,194);*/
        }



    </style>
    
    
    <script type="text/javascript">
    
    
     var myVar=setInterval(function(){myTimer()},1000);


//    游戏时间
    function myTimer()
    {
        var d=new Date();
        var t=d.toLocaleDateString()+" "+ d.toTimeString();
        document.getElementById("demo").innerHTML=t;

    }
    
    
    </script>

  </head>
  
  <body>
  
  
   <div style="margin-top:10px;">
    <p>
    <br/>
关于我们|联系我们|营销中心|English Site|Contact Us

    京公网安备 11000002000088号  |  京ICP证070359号

</p>
<p>互联网出版许可证编号新出网证(京)字150号  |  出版物经营许可证  |  网络文化经营许可证京网文[2014]2148-348号  |  违法和不良信息举报电话：4006561155
Copyright © 2004 - 2016   </p>
</div>
<div style="height: 30px">

     北京时间：<span id="demo"></span>

</div>
  </body>
</html>
