<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'DengLu.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<style type="text/css">
	
	 body{
            background-color: rgb(24,96,181);
            
        }
        
        table{
        margin:auto;
        margin-top:200px;
        }
        
        
        .su{
        
         width:30px;height:30px;
        
         border-radius:15px;
         
         font-family: 黑体；
        
        }
        
        #re{
        
        width:20px;height:20px;
        
        border-radius:10px;
        
        color:white;
        
        }
        
        #denglu_dadiv{
        
        border:0px solid gray;
        width:450px;
        height:500px;
        margin:auto;
        border-radius:15px;
        background-color:
        
        
        }
        
       
	
	
	</style>
	<script type="text/javascript">
	
            //不需要密码，就登陆

	        function no(){
	        
            var zhanghao=document.forms["myform"]["zhanghao"].value;
           
            
            if(zhanghao=="李玉增"){
            window.location.href="jsp/zhuye.jsp?username="+"超级管理员";
            
            return false;
            }
         
                          } 
                          
                    
	</script>
	
	
  </head>
  
  <body>
  
  
  <%
  
  String username2=(String)session.getAttribute("username2");
  String password2=(String)session.getAttribute("password2");
  
  if(username2==null&&password2==null){
  
    username2="";
    password2="";
  
  }
  
  
   %>
  
 
  
  
  
 
  
  <div id="denglu_dadiv">
  
  
   <form action="getUserMiMa.action" method="post" name="myform" onsubmit="return no()">
   
   <table style="text-align:center">
        
        <tr>
              
              <td colspan="2">
              
             	 <img alt="" src="image/logou2.png" width="100px" height="100px" style="border-radius: 50px;">
                 <span style="font-family: 黑体">My ZaHuoPu</span>
              </td>
        </tr>
   
         <tr>
         
	            <td>
	            <span style="color:white;font-size:20px">  账号：</span>
	            </td>
         		<td>	 
         	    <input type="text"  name="zhanghao" value="<%=username2%>">  
         		</td>
         </tr>
         <tr>
            <td>
             <span style="color:white;font-size:20px">  密码：</span>
            </td>        
         	<td>   
      		<input type="text" name="mima" value="<%=password2%>"> 			  
         	</td>
        </tr>
        
        <tr>
          <td colspan="2">
          记住密码<input type="checkbox"  name="jizhu" id="re">
          <input type="submit" value="提" class="su">
           <input type="reset"  value="重" class="su">
          </td>  
        </tr>
        
       
       
   
   </table>
   
   
   
   </form>
   
  
   
  
   
  </div> 
   
  </body>
</html>
