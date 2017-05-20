<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'UserUpdate2.jsp' starting page</title>
    
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
         
	            var b4=document.forms["myform"]["yuan"].value;
	            var b5=document.forms["myform"]["yuan2"].value;
	            if(b5==null||b5==""||b5!=b4){
	             alert("原来密码输入错误！请核对");
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
              <h2>修改信息</h2>
              <hr/>
              <div style="width:500px;border:0px solid red;margin:auto;height:350px;
        text-align:center;">
        <form action="http://localhost:8080/ZaHuoPu/updateUser2.action" method="post"
        name="myform" onsubmit="return no()">
    
    <table style="margin:auto;line-height:30px">
	    <tr>
		    <td>
		     身份编号：
		    </td>
		    <td>
		    <input type="text" name="id" value="<%=request.getParameter("id")%>" readonly="readonly">
		    </td>
	    </tr>
	    
	     <tr>
		    <td>
		     用户账号：
		    </td>
		    <td>
		   <input type="text" name="userName" value="<%=request.getParameter("username")%>" readonly="readonly">
           <input type="hidden"  name="yuan" value="<%=request.getParameter("password")%>">
		    </td>
	    </tr>
	    
	     <tr>
		    <td>
		      原来密码：
		    </td>
		    <td>
		    <input type="text"  name="yuan2" value=""/>
		    </td>
	    </tr>
	    
	     <tr>
		    <td>
		      改后密码：
		    </td>
		    <td>
		    <input type="password" name="password" value="">
		    </td>
	    </tr>
	    
	     <tr>
		    <td>
		
		    </td>
		    <td>
		     <input type="submit" value="修改" style="font-family: 黑体"> 
		    </td>
	    </tr>
	 
    </table>
       
        </form>
        </div>
        <hr/>
   </div>
  </body>
</html>
