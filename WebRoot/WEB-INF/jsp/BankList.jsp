<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'BankList.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<style type="text/css">
	
	td{
	
	height:30px;
	
	}
	
	</style>
	
	
	<script type="text/javascript">
	
	function goPage(page){
	
	window.location.href="getBankPage.action?page="+page;
	
	}
	      
	
	
	
	
	
	</script>

  </head>
  
  <body>
  
   <jsp:include page="/jsp/index.jsp"></jsp:include> 
  
   
   <div style="border:0px solid red;width:100%;height:450px;">
    <table style="margin:auto;width:100%" border="1px solid" cellspacing="0px">
   
   
   
          <tr style="text-align: center;">
          
          <td colspan="10"><h3>库存商品信息（Bank）</h3></td>
          
          </tr>
          
          
          
          <tr>
          <td>入库票号：</td>
           <td>商品编号：</td>
            <td>商品名称：</td>
             <td>商品规格：</td>
             
             <td>商品单价：</td>
              <td>商品数量：</td>
               <td>商品金额：</td>
                <td>供应商全称：</td>
          
              
               <td colspan="2">操作->
      <a href="http://localhost:8080/ZaHuoPu/BankAdd.jsp">         
                                      添加
               </a>
               </td>
          
          </tr>
          
          
          
          
          
          
          
          
          
          
   
   
          <c:forEach items="${Bank}" var="bank">
          
         
          
          
          
          
          
          
          
          <tr>
                
            <td>${bank.b_id}</td>
			<td>${bank.m_id}</td>
			<td>${bank.m_name}</td>
			<td>${bank.m_norms}</td>
			
			<td>${bank.m_price}</td>
			<td>${bank.m_num}</td>
			<td>${bank.b_price}</td>
			<td>${bank.s_name}</td>
		
			
			<td>
			<a href="http://localhost:8080/ZaHuoPu/deleteBank.action?b_id=${bank.b_id} ">
			删除
			</a>
			</td>
            <td>
            <a href="http://localhost:8080/ZaHuoPu/BankUpdate.jsp?b_id=${bank.b_id}">
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
 
   
 
   
  </body>
</html>
