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
    
    <title>My JSP 'index.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--  <meta charset="UTF-8">                          -->
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	 <style>

        #shang{
            border: 0px solid gray;
            width: 100%;
            height: 180px;
        }

        #shang1{
            border: 1px solid gray;
            width: 100%;
            height: 60px;
            /**background-color: rgb(170,188,120);*/
            text-align:center;
            border-radius:15px;
            
        }

       .shang2{
            border: 0px solid red;
            width: 100%;
            height: 100px;
           /** background-color: rgb(215,223,194);*/
        }

        .yuan{

           /** background-color: rgb(128,147,79);*/
            width: 300px;
            height: 100px;
            border-radius: 30px;
            float: left;
            text-align: center;
            font-size:30px;
            line-height:100px;
        }

        .jichugongneng{

            margin-left: 10px;
            margin-top: 10px;
            width: 150px;
            height: 50px;
            font-size: 30px;
            border-radius: 15px;
            
            
        }


        body{
            
            background:url(image/72.jpg) top center no-repeat; 
            background-size:cover;

        }
        
      

        .shang2da{
            border: 1px solid gray;
            width: 100%;
            height: 100px;
           /** background-color: rgb(215,223,194);*/
            overflow: hidden;
            border-radius:15px;
        }
        
        a{
        
         text-decoration: none;
        
        }
        
        
         #gundong
        {
            
            
            position:relative;
            animation:myfirst 10s linear 0s infinite;
        }
        
        /*alternate*/

        @keyframes myfirst
        {
            0%   { left:0px; top:0px;}
            25%  { left:100px; top:0px;}
            50%  { left:200px; top:0px;}
            75%  { left:300px; top:0px;}
            100% { left:400px; top:0px;}
        }
        
       .jichugongneng:LINK,.jichugongneng:VISITED{
        	background-color: rgb(195,213,253);
        	color: #00ff00;
        	text-decoration: none;
        }
       .jichugongneng:HOVER,.jichugongneng:ACTIVE{
        	
        	background-color: rgb(195,213,253);
        	border:1px solid rgb(195,213,253);
        }
        

 
    </style>




    
   

    <script>
    
        function dianji(s,gongneng){

            document.getElementById("s").innerHTML=document.getElementById(s).innerHTML;
            
            

        }

        function dianji2(d){

            document.getElementById("d").innerHTML=document.getElementById(d).innerHTML;
        }
        
        function kong(){
        
            if(document.getElementById("nu").value=="null"){
            
            document.getElementById("nu").value="";
        }
        }
        
     
    
        //北京时间
        var myVar=setInterval(function(){myTimer()},1000);
        function myTimer(){
       
        var d=new Date();
        var t=d.toLocaleString();
        document.getElementById("demo").innerHTML=t;

        }
        
        
        
        
        
        
        function xuanze(){
        
        
        var myselect=document.getElementById("test");
        var index=myselect.selectedIndex;
        var zhi=myselect.options[index].value;
       
        if(zhi=="供应商"){
        window.location.href="http://localhost:8080/ZaHuoPu/getSupplierPage.action?page=1"
        }
        
        if(zhi=="商品"){
        
         window.location.href="http://localhost:8080/ZaHuoPu/getMerchandisePage.action?page=1"
        
        }
        
         if(zhi=="客户"){
        
         window.location.href="http://localhost:8080/ZaHuoPu/getClientPage.action?page=1"
        
        }
        
        if(zhi==""){
        
        alert("搜索值为空！");
        }
        
        
        }
        
        
        function baidu(){
        
        var word=document.getElementById("baidu").value;
        
        window.location.href="https://www.baidu.com/baidu?word="+word;
        
        }
        
    
    
    </script>
        
        


    
	
	

  </head>
  
  <body onload="kong()" id="body" style="background-image: url('image/<%=session.getAttribute("zhi")%>.jpg')">
  
  
  
   
   <span style="font-size:30px;font-family: 黑体">企业进销存管理系统</span>
   &nbsp;&nbsp; 
   
  
   操作员：<input style="border-radius:15px;font-family: 黑体" type="text" id="nu" 
   value="<%=session.getAttribute("username")%>" readonly="readonly">
   
  
   &nbsp;&nbsp;
 
  
  <span style="text-decoration:underline;color:rgb(112,172,254)" onclick="baidu()">百度一下</span>
  <input type="text" placeholder="站外搜索" id="baidu">
  &nbsp;&nbsp;
  <select id="test">
        <option>商品</option>
        <option>客户</option>
        <option>供应商</option>
  </select>  
  <button onclick="xuanze()">搜索</button>
   &nbsp;&nbsp;
   北京时间：<span id="demo" style="font-size:small;color:gray"></span>
   &nbsp;&nbsp;
    <a href="jsp/DengLu.jsp"><span style="color:black;text-decoration: underline;float:right">退出</span></a>
   &nbsp;&nbsp;
   
     
   
   <hr/>
   
   <div style="width:100%;height:50px;" >
    <span id="gundong"> 热烈欢迎！3.12日上午中共八大召开
    &nbsp;&nbsp;<a href="https://www.baidu.com/baidu?word=李玉增主席来我校视察工作">4.李玉增主席来我校视察工作</a>
     &nbsp;&nbsp;5.朱磊总裁发表重要讲话
      &nbsp;&nbsp;6.余鹏浩再次创造世界纪录
       &nbsp;&nbsp;7.王博又在吹牛逼
    
    
       </span>
         
   </div>

<div id="shang">

    <div id="shang1">
    
       <button style="border-radius: 25px;width: 50px;height: 50px"
       onclick="history.go(-1)">

       <span style="color: white;font-size: 25px;">
       
      &lt;
       
       </span>

   </button>
        <input type="button" value="基础功能" class="jichugongneng"  onmouseover="dianji('1s','jichu')" id="jichu">
        <input type="button" value="进货管理" class="jichugongneng"  onmouseover="dianji('2s',this)" id="jinhuo">
        <input type="button" value="销售管理" class="jichugongneng"  onmouseover="dianji('3s',this)" id="xiaoshou">
        <input type="button" value="查询统计" class="jichugongneng"  onmouseover="dianji('4s',this)" id="chaxun">
        <input type="button" value="库存管理" class="jichugongneng"  onmouseover="dianji('5s',this)" id="kucun">
        <input type="button" value="系统管理" class="jichugongneng"  onmouseover="dianji('6s',this)" id="xitong">
        
        
       <button style="border-radius: 25px;width: 50px;height: 50px"
       onclick="history.go(+1)">

       <span style="color: white;font-size: 25px;">
       
      &gt;
       
       </span>

   </button>
    </div>

    <div class="shang2da" id="s">
    </div>
  
    <!--功能-->
<!--************************-->
<div style="overflow: hidden;width: 0px;height: 0px">
<div class="shang2" id="1s">
    <div class="yuan">   
    <a href="http://localhost:8080/ZaHuoPu/getSupplierPage.action?page=1">   
    供应商信息管理  
    </a>
    </div>
    <div class="yuan">
      <a href="http://localhost:8080/ZaHuoPu/getMerchandisePage.action?page=1">   
    商品信息管理  
      </a>
    </div>
    <div class="yuan">
     <a href="http://localhost:8080/ZaHuoPu/getClientPage.action?page=1">   
    客户信息管理  
     </a>
    </div>
    
</div>


<div class="shang2" id="2s">
   <!-- 进货 -->
   <div class="yuan">
     <a href="http://localhost:8080/ZaHuoPu/getMerchandisePage.action?page=1">   
    进货商品查看  
     </a>
    </div>
</div>
<div class="shang2" id="3s">
    <div class="yuan">
     <a href="http://localhost:8080/ZaHuoPu/getSellPage.action?page=1">   
    销售商品查看 
     </a>
    </div>
</div>
<div class="shang2" id="4s">
    <div class="yuan">
     <a href="http://localhost:8080/ZaHuoPu/BankAdd.jsp">   
    供应商排行 
     </a>
    </div>
    <div class="yuan">
     <a href="http://localhost:8080/ZaHuoPu/BankAdd.jsp">   
    大客户排行 
     </a>
    </div>
    <div class="yuan">
     <a href="http://localhost:8080/ZaHuoPu/BankAdd.jsp">   
    利润信息查看 
     </a>
    </div>
    <div class="yuan">
     <a href="http://localhost:8080/ZaHuoPu/BankAdd.jsp">   
    商品畅销排行 
     </a>
    </div>
</div>
<div class="shang2" id="5s">
    <div class="yuan">
     <a href="http://localhost:8080/ZaHuoPu/getBankPage.action?page=1">   
    查询库存商品  
     </a>
    </div>
</div>


<div class="shang2" id="6s">
    <div class="yuan">
     <a href="http://localhost:8080/ZaHuoPu/jsp/xitong.jsp">   
    本系统信息管理  
     </a>
    </div>
    <div class="yuan">
     <a href="http://localhost:8080/ZaHuoPu/jsp/DengLuGuan.jsp">   
    管理员信息管理  
     </a>
    </div>
     <div class="yuan">
     <a href="http://localhost:8080/ZaHuoPu/getUserId.action?username=<%=session.getAttribute("username")%>">   
    操作员信息管理  
     </a>
    </div>
   
</div>
</div>
<!--****************************************-->
  
</div>



  </body>
</html>
