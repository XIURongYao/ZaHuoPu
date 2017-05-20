<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'UserUpdate.jsp' starting page</title>
    
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
         
            
            var b1=document.forms["myform"]["c_id"].value;
            if(b1==null||b1==""){
             alert("商品值为空!请重新填写");
             return false;
            }   
         
            var b2=document.forms["myform"]["m_name"].value;
            if(b2==null||b2==""){
             alert("商品值为空!请重新填写");
             return false;
            }
            
            var b3=document.forms["myform"]["m_short"].value;
            if(b3==null||b3==""){
             alert("商品值为空!请重新填写");
             return false;
            } 
            
            
            if (confirm("你确定提交吗？")) {  
		            alert("点击了确定");  
		        }  
		        else {  
		            alert("点击了取消"); 
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
        <form action="http://localhost:8080/ZaHuoPu/updateUser.action" method="post"
        name="myform" onsubmit="return no()">
    
        身份编号：<input type="text" name="id" value="<%=request.getParameter("id")%>" readonly="readonly"><br/><br/>
      用户账号 :<input type="text" name="userName" value="<%=request.getParameter("username")%>"><br/><br/>
       用户密码：<input type="text" name="password" value="<%=request.getParameter("password")%>"><br/><br/>
 
  
        <input type="submit" value="修改" style="font-family: 黑体"> 
        
        </form>
        </div>
        <hr/>
   </div>
   
    
    
  </body>
</html>
