<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Supplier.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/SupplierAdd.css">
	
	<script type="text/javascript" src="js/no.js"></script>

  </head>
  
  <body>
    
     <!-- 引入头部文件 -->
     <jsp:include page="jsp/index.jsp"></jsp:include> 
     
     
     
        <div id="dadiv">
     <!-- 增加会员-->
        <h2><span style="color:gray;" onmouseover="dianji('1s','jichu')">基础功能 > 供应商信息管理 </span> > 添加供应商</h2>
        <hr/>
        <div id="zhongdiv">
    
     <!-- 表单 -->   
        <form action="http://localhost:8080/ZaHuoPu/addSupplier.action" method="post"
         name="myform" onsubmit="return no()">
        
  <!-- 表格 -->
   <table id="table">
   
			   <tr>  
			   <td>
			       商品全名：
			   </td>
			   <td>
			   <input type="text" name="s_name">
			   </td>    
			   </tr>
			   
			   <tr>  
			   <td>
			         简  称：
			   </td>
			   <td>
			  <input type="text" name="s_short">
			   </td>    
			   </tr>
			   
			   <tr>  
			   <td>
			      邮 政 编 码: 
			   </td>
			   <td>
			   <input type="text" name="s_code">
			   </td>    
			   </tr>
			   
			   <tr>  
			   <td>
			     地址：
			   </td>
			   <td>
			   <input type="text" name="s_site">
			   </td>    
			   </tr>
			   
			   <tr>  
			   <td>
			      电话：
			   </td>
			   <td>
			  <input type="text" name="s_phone">
			   </td>    
			   </tr>
			   
			    <tr>  
			   <td>
			   传真：
			   </td>
			   <td>
			  <input type="text" name="s_fax">
			   </td>    
			   </tr>
			   
			      <tr>  
			   <td>
			    联系人：
			   </td>
			   <td>
			 <input    type="text" name="s_connection">
			   </td>    
			   </tr>
			   
			      <tr>  
			   <td>
			    
			   </td>
			   <td>
			<input type="submit" value="增加" style="font-family: 黑体">  
			   </td>    
			   </tr>
			    
			   
          </table>
        </form>
      </div>
        <hr/>
    </div> 

  </body>
</html>
