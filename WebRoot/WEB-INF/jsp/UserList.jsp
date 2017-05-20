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
    
    <title>My JSP 'UserList.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<script type="text/javascript">
	
	function goPage(page){
	
	window.location.href="getUserPage.action?page="+page;
	
	}
	      
	
	function yincang(){
	
	
	document.getElementById("yin").style.display="none";
	
	
	}
	
	
	
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
	
	
	function wo(){
	
	 var ecserpid,ecserpname,siappid,siappname;
	 var arrData = new Array();
	 var tab = document.getElementById("tab");
	 
	
	
	
	
	}
	
	



	
	
	</script>
	
	

  </head>
  
  <body>
   
   
    <jsp:include page="/jsp/index.jsp"></jsp:include> 
   <div style="border:0px solid red;width:100%;height:450px;overflow: hidden">
   
   <!-- 查看盒子 -->
   <div style="border:0px solid red;width:100%;height:450px;" id="yin">
    <table style="margin:auto;width:100%;" border="1px solid" cellspacing="0px" id="tab">
   
   
   
          <tr style="text-align: center;">
          
          <td colspan="10"><h3>操作员</h3></td>
          
          </tr>
          
          
          
          <tr>
          <td>用户编号：</td>
           <td>用户账号：</td>
            <td>用户密码：</td>
            
                
          
              
               <td colspan="2">操作->
      <a href="http://localhost:8080/ZaHuoPu/UserAdd.jsp">         
                                      添加  
               </a>
               
              <!-- <button onclick="yincang()">添加</button>  -->  
               </td>
          
          </tr> 
          <c:forEach items="${User}" var="user">    
          
          <tr>
                
            <td>${user.id}</td>
			<td>${user.userName}</td>
			<td>${user.password}</td>
			
			
		
			
			<td>
			<a href="http://localhost:8080/ZaHuoPu/deleteUser.action?id=${user.id} ">
			<!-----------按钮提示框---------->   
            <input type="button" value="删除" > 
			</a>
			 
			 
			</td>
            <td>
            <a href="http://localhost:8080/ZaHuoPu/UserUpdate.jsp?id=${user.id}&username=${user.userName}&password=${user.password}">
                              修改
            </a>
            </td>
              
               
          
          </tr>
          
          
          
          
         
        
         
         
          
          
          </c:forEach>
          
          <tr style="text-align:center">
       <td colspan="10">
       <input   type="button"  value="首页"  onclick="goPage(1)">
       <input   type="button"  value="上一页" onclick="goPage(${page}-1)">
       <input   type="button"  value="下一页" onclick="goPage(${page}+1)">
       <input   type="button"  value="尾页"   onclick="goPage(${MaxPage})">
       <input   type="text" readonly="readonly"  value="${page}/${MaxPage}">
       </td> 
       </tr>
   
   
   </table>
   </div>
   
   <!-- 增加盒子 -->
    <div style="border:0px solid red;margin:auto;text-align:center;
     height:450px;">
        <!-- 修改书籍 -->
              <h2>注册</h2>
              <hr/>
              <div style="width:500px;border:0px solid red;margin:auto;height:350px;
        text-align:center;">
        <form action="http://localhost:8080/ZaHuoPu/addUser.action" method="post" 
        name="myform" onsubmit="return tijiao()">
    
      
       用户账号 :<input type="text" name="userName" id="zhanghao"><br/><br/>
       用户密码：<input type="text" name="password"><br/><br/>
       确认密码：<input type="text" name="password2"><br/><br/>
 
  
        <input type="submit" value="增加" style="font-family: 黑体"> 
        </form>
        </div>
        <hr/>
   </div>
   
   </div>
  
   <hr/>
  </body>
</html>
