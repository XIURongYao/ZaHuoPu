<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ClientUpdate.jsp' starting page</title>
    
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
         
            
            var b1=document.forms["myform"]["c_name"].value;
            if(b1==null||b1==""){
             alert("客户姓名为空!请重新填写");
             return false;
            }   
         
            var b2=document.forms["myform"]["c_site"].value;
            if(b2==null||b2==""){
             alert("客户地址为空!请重新填写");
             return false;
            }
            
            var b3=document.forms["myform"]["c_short"].value;
            if(b3==null||b3==""){
             alert("客户简称为空!请重新填写");
             return false;
            } 
            
             var b4=document.forms["myform"]["c_code"].value;
            if(b4==null||b4==""){
             alert("邮政编码为空!请重新填写");
             return false;
            }      
            
             var b5=document.forms["myform"]["c_phone"].value;
            if(b5==null||b5==""){
             alert("电话为空!请重新填写");
             return false;
            }      
            
             var b6=document.forms["myform"]["c_fax"].value;
            if(b6==null||b6==""){
             alert("传真为空!请重新填写");
             return false;
            } 
            
             var b7=document.forms["myform"]["c_connection"].value;
            if(b7==null||b7==""){
             alert("联系人为空!请重新填写");
             return false;
            }                 
           
         }
   
  </script>



  </head>
  
  <body>
  <jsp:include page="jsp/index.jsp"></jsp:include> 
    
    
     <div style="border:0px solid red;margin:auto;
     height:450px;">
        <!-- 修改书籍 -->
              <h2><span style="color:gray;" onmouseover="dianji('1s','jichu')">基础功能 > 供应商信息管理 </span> > 修改客户</h2>
              <hr/>
              <div style="width:500px;border:0px solid red;margin:auto;height:350px;
        text-align:center;">
        <form action="http://localhost:8080/ZaHuoPu/updateClient.action" method="post"
        name="myform" onsubmit="return no()">
        <table>
        
         <tr>
		        <td>
		          客户ID：
		        </td>
		        <td>
		        <input type="text" name="c_id" value="<%=request.getParameter("c_id")%>" readonly="readonly">
		        </td>
	        </tr>
	        
	        <tr>
		        <td>
		       客户姓名：
		        </td>
		        <td>
		        <input type="text" name="c_name" value="<%=request.getParameter("c_name")%>">
		        </td>
	        </tr>
	        
	        <tr>
		        <td>
		         客户地址：
		        </td>
		        <td>
		        <input type="text" name="c_site" value="<%=request.getParameter("c_site")%>">
		        </td>
	        </tr>
	        
	        <tr>
		        <td>
		        客户简称：
		        </td>
		        <td>
		        <input type="text" name="c_short" value="<%=request.getParameter("c_short")%>">
		        </td>
	        </tr>
	        
	        <tr>
		        <td>
		         邮政编码：
		        </td>
		        <td>
		        <input type="text" name="c_code" value="<%=request.getParameter("c_code")%>">
		        </td>
	        </tr>
	        
	        <tr>
		        <td>
		        电话：
		        </td>
		        <td>
		        <input type="text" name="c_phone" value="<%=request.getParameter("c_phone")%>">
		        </td>
	        </tr>
	        
	        <tr>
		        <td>
		          传真：
		        </td>
		        <td>
		        <input type="text" name="c_fax" value="<%=request.getParameter("c_fax")%>">
		        </td>
	        </tr>
	        
	          <tr>
		        <td>
		        联系人：
		        </td>
		        <td>
		        <input type="text" name="c_connection" value="<%=request.getParameter("c_connection")%>">
		        </td>
	        </tr>
	        
	         
	           <tr>
			        <td>  
			        </td>
			        <td>
			         <input type="submit" value="修改" style="font-family: 黑体"> 
	                 <input type="reset"  style="font-family: 黑体">
			        </td>
	         </tr>
        
        
         
        </table>
    
        </form>
   </div>
        <hr/>
 
 </div>
 
   
  </body>
</html>
