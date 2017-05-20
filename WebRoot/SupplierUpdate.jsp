<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'SupplierUpdate.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="styles.css">
	
	
	<style type="text/css">
	
	#table{
	
	text-align:center;
	line-height:30px;
	
	
	}
	
	#zhongdiv{
	
	width:500px;
	border:0px solid red;
	margin:auto;
	height:350px;
    text-align:center;
	}
	
	#dadiv{
	
	border:0px solid red;
	margin:auto;
    height:450px;
	
	}
	
	</style>
	
	
	
	<script type="text/javascript" src="js/no.js"></script>
	
	

  </head>
  
  <body>
   
     <!-- 引入头部文件 -->
     <jsp:include page="jsp/index.jsp"></jsp:include> 
   
    
     <div id="dadiv">
        <!-- 修改书籍 -->
              <h2><span style="color:gray;" onmouseover="dianji('1s','jichu')">基础功能 > 供应商信息管理 </span> > 修改供应商信息</h2>
              <hr/>
              <div id="zhongdiv">
        <form action="http://localhost:8080/ZaHuoPu/updateSupplier.action" method="post"
       name="myform" onsubmit="return no()">
        <table id="table">
        <tr>
        <td>
                  供应商编号：
        </td> 
        <td>
        <input type="text" name="s_id" value="<%=request.getParameter("s_id")%>" readonly="readonly">
        </td>       
        </tr>
        
        <tr>
        <td>
                  商品 全称 :
        </td> 
        <td>
        <input type="text" name="s_name" value="<%=request.getParameter("s_name")%>">
        </td>       
        </tr>
        
        <tr>
        <td>
                   简称：
        </td>  
        <td>
        <input type="text" name="s_short" value="<%=request.getParameter("s_short")%>">
        </td>      
        </tr>
        
        <tr>
        <td>
        邮政编码：
        </td>   
        <td>
        <input type="text" name="s_code" value="<%=request.getParameter("s_code")%>">
        </td>     
        </tr>
        
        <tr>
        <td>
         地址：
        </td>  
        <td>
        <input type="text" name="s_site" value="<%=request.getParameter("s_site")%>">
        </td>      
        </tr>
        
        <tr>
        <td>
        电话：
        </td> 
        <td>
        <input type="text" name="s_phone" value="<%=request.getParameter("s_phone")%>">
        </td>       
        </tr>
        
        <tr>
        <td>
        传真：
        </td>
        <td>
        <input type="text" name="s_fax" value="<%=request.getParameter("s_fax")%>">
        </td>        
        </tr>
        
         <tr>
        <td>
          联系人：
        </td>
        <td>
        <input type="text" name="s_connection" value="<%=request.getParameter("s_connection")%>">
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
