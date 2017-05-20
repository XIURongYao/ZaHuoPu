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
    
    <title>My JSP 'SupplierList.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/SupplierList.css">
	
    <script type="text/javascript" src="js/SupplierList.js"></script> 
	
	
	

  </head>
  
  <body>
   
   <!-- 引入头部文件 -->
    <jsp:include page="/jsp/index.jsp"></jsp:include> 
    
    <div id="div">
    <table id="table" border="1px solid" cellspacing="0px">
          <tr id="table_tr">       
          <td colspan="10" id="h3_td"><h3>供应商信息（Supplier）</h3></td> 
          </tr>          
          <tr id="table_tr2">
          <td>供应商ID：</td>
           <td>商品全称：</td>
            <td>简称：</td>
              <td>邮政编码：</td>           
	             <td>地址：</td>
	              <td>电话：</td>
	               <td>传真：</td>
	                <td>联系人：</td>        
               <td colspan="2">操作->
      <a href="http://localhost:8080/ZaHuoPu/SupplierAdd.jsp">         
                                      添加
               </a>
               </td>
          </tr> 
          
          <c:forEach items="${Supplier}" var="supplier">    
          
          <tr>     
            <td id="bianhao_td">
            ${supplier.s_id}
           
            </td>
			<td>${supplier.s_name}</td>
			<td>${supplier.s_short}</td>
			<td>${supplier.s_code}</td>			
			<td>${supplier.s_site}</td>
			<td>${supplier.s_phone}</td>
			<td>${supplier.s_fax}</td>
			<td>${supplier.s_connection}</td>
			
		
			<!-- 操作 -->
			<td>
			<a href="http://localhost:8080/ZaHuoPu/deleteSupplier.action?s_id=${supplier.s_id} ">
			<button class="mybutton"><font color="red">删除</font></button>
			</a>
			</td>
            <td> 
            <a href="http://localhost:8080/ZaHuoPu/SupplierUpdate.jsp?s_name=${supplier.s_name}&s_id=${supplier.s_id}
            &s_short=${supplier.s_short}&s_code=${supplier.s_code}&s_site=${supplier.s_site }&s_phone=${supplier.s_phone } 
            &s_fax=${supplier.s_fax}&s_connection=${supplier.s_connection}">
			<button class="mybutton"><font color="blue">修改</font></button>
			</a>           
            </td>           
          </tr>   
          </c:forEach>
          
          <!-- 分页 -->
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
   <hr/>
   
  </body>
</html>
