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
    
    <title>My JSP 'ClientList.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/SupplierList.css">
	
	<script type="text/javascript">
	
	function goPage(page){
	
	window.location.href="getClientPage.action?page="+page;
	
	}
	      
	
	
	</script>
	

  </head>
  
  <body>
  
     <jsp:include page="/jsp/index.jsp"></jsp:include> 
     <div style="border:0px solid red;width:100%;height:450px;">
     <table id="table" border="1px solid" cellspacing="0px">
   
   
   
          <tr id="table_tr">
          
          <td colspan="10"><h3>客户信息(Client)</h3></td>
          
          </tr>
          
          
          
          <tr>
          <td>客户ID：</td>
           <td>客户全称：</td>
            <td>客户地址：</td>
             <td>客户简称：</td>
             
             <td>邮政编码：</td>
              <td>电话：</td>
               <td>传真：</td>
                <td>联系人：</td>
          
              
               <td colspan="2">操作->
      <a href="http://localhost:8080/ZaHuoPu/ClientAdd.jsp">         
                                      添加
               </a>
               </td>
          
          </tr>
          
          
          
          
          
          
          
          
          
          
   
   
          <c:forEach items="${Client}" var="client">
          
         
          
          
          
          
          
          
          
          <tr>
                
            <td id="bianhao_td">${client.c_id}</td>
			<td>${client.c_name}</td>
			<td>${client.c_site}</td>
			<td>${client.c_short}</td>
			
			<td>${client.c_code}</td>
			<td>${client.c_phone}</td>
			<td>${client.c_fax}</td>
			<td>${client.c_connection}</td>
		
			
			<td>
			<a href="http://localhost:8080/ZaHuoPu/deleteClient.action?c_id=${client.c_id} ">
			<button><font color="red">删除</font></button>
			</a>
			</td>
            <td>
            <a href="http://localhost:8080/ZaHuoPu/ClientUpdate.jsp?c_id=${client.c_id}
            &c_name=${client.c_name}&c_site=${client.c_name}&c_short=${client.c_short}
            &c_code=${client.c_code}&c_phone=${client.c_phone}&c_fax=${client.c_fax}
            &c_connection=${client.c_connection}">
            <button><font color="blue">修改</font></button>
            </a>
            </td>
              
               
          
          </tr>
          
          
          
          
          
          </c:forEach>
          
          
       <tr style="text-align:center">
       <td colspan="10">
                   <input class="fenye"   type="button"  value="首页"  onclick="goPage(1)">
			       <input class="fenye"  type="button"  value="上一页" onclick="goPage(${page}-1)">
			       <input class="fenye"  type="button"  value="下一页" onclick="goPage(${page}+1)">
			       <input class="fenye"  type="button"  value="尾页"   onclick="goPage(${MaxPage})">
			       <input class="fenye" type="text" readonly="readonly"  value="${page}/${MaxPage}">
       </td> 
       </tr>
   
   
   </table>
   </div>
         
  
 
   
   
   
  </body>
</html>
