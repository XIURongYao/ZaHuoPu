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
    
    <title>My JSP 'DengLuGuan.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<script type="text/javascript">
	
	        function no(){
	        
            var zhanghao=document.forms["myform"]["zhanghao"].value;
            var mima=document.forms["myform"]["mima"].value;
           
            
            if(zhanghao=="李玉增"&&mima=="aaa"){
            window.location.href="http://localhost:8080/ZaHuoPu/getUserPage.action?page=1";
            
            
            }else{
            alert("用户名或者密码错误！请核对再次输入")
            return false;
            }
         
                          } 
                          
                    
	</script>
	
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
    <form action="http://localhost:8080/ZaHuoPu/getUserPage.action?page=1" method="post" name="myform"
    onsubmit="return no()">
    <table style="margin:auto;line-height:30px">
    
    <tr>
          
           <td colspan="2">
           <h3>此为管理员专用界面</h3>
           </td>
       </tr>
    
       <tr>
           <td>
           管理员账户：
           </td>
           <td>
           <input type="text" name="zhanghao" >
           </td>
       </tr>
       
       <tr>
           <td>
           管理员密码：
           </td>
           <td>
           <input type="password" name="mima">
           </td>
       </tr>
       
       <tr>
           <td>
           </td>
           <td>
           <input type="submit">
           <input type="reset">
           </td>
       </tr>
    </table>  
    </form>
    </div>
    
    <div class="sankuangzi"></div>
    
   </div>
   
   <hr/>
   
   
  </body>
</html>
