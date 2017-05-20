<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'UserAdd.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
	
	
	
	
	function tijiao(){
	
	       var b1=document.forms["myform"]["userName"].value;
            if(b1==null||b1==""){
             alert("用户名为空!请重新填写");
             return false;
            } 
            
             var b2=document.forms["myform"]["password"].value;
            if(b2==null||b2==""){
             alert("密码值为空!请重新填写");
             return false;
            }  
            
            var b3=document.forms["myform"]["password2"].value;
            if(b3!=b2){
             alert("两次密码不一致！");
             return false;
            }    
         
	
	
	}
	
	
	
	</script>

  </head>
  
  <body>
  
  
    <jsp:include page="jsp/index.jsp"></jsp:include> 
   
    
     <div style="border:0px solid red;margin:auto;text-align:center;
     height:450px;">
        <!-- 修改书籍 -->
              <h2>注册</h2>
              <hr/>
              <div style="width:500px;border:0px solid red;margin:auto;height:350px;
        text-align:center;">
        <form action="http://localhost:8080/ZaHuoPu/addUser.action" method="post" 
        name="myform" onsubmit="return tijiao()">
    
      
       用户账号 :<input type="text" name="userName"><br/><br/>
       用户密码：<input type="text" name="password"><br/><br/>
       确认密码：<input type="text" name="password2"><br/><br/>
 
  
        <input type="submit" value="增加" style="font-family: 黑体"> 
        </form>
        </div>
        <hr/>
   </div>
    
  
  
  </body>
</html>
