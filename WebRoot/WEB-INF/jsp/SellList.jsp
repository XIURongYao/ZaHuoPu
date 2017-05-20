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
    
    <title>My JSP 'SellList.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/SupplierList.css">
	
	<script type="text/javascript">
	
	function goPage(page){
	
	window.location.href="getSellPage.action?page="+page;
	
	}
	      
	
	
	
	
	
	</script>

  </head>
  
  <body>
  
   <jsp:include page="/jsp/index.jsp"></jsp:include> 
    <div id="div">
    <table id="table" border="1px solid" cellspacing="0px">
   
   
   
          <tr id="table_tr">
          
          <td colspan="11" id="h3_td"><h3>销售商品信息（Sell）</h3></td>
          
          </tr>
          
          
          
          <tr id="table_tr2">
          <td>编号：</td>
           <td>商品ID：</td>
            <td>商品名称：</td>
             <td>商品规格：</td>
             
             <td>商品单价：</td>
              <td>商品数量：</td>
               <td>商品总价：</td>
                <td>客户姓名：</td>
                <td>地址：</td>
          
              
               <td colspan="2">操作->
      <a href="http://localhost:8080/ZaHuoPu/SellAdd.jsp">         
                                      添加
               </a>
               </td>
          
          </tr>
          
          
          
          
          
          
          
          
          
          
   
   
          <c:forEach items="${Sell}" var="sell">
          
         
          
          
          
          
          
          
          
          <tr>
                
            <td id="bianhao_td">${sell.se_id}</td>
			<td>${sell.m_id}</td>
			<td>${sell.m_name}</td>
			<td>${sell.m_norms}</td>
			
			<td>${sell.m_price}</td>
			<td>${sell.m_num}</td>
			<td>${sell.se_price}</td>
			<td>${sell.c_name}</td>
			<td>${sell.se_site}</td>
		
			
			<td>
			<a href="http://localhost:8080/ZaHuoPu/deleteSell.action?se_id=${sell.se_id} ">
			<button class="mybutton"><font color="red">删除</font></button>
			</a>
			</td>
            <td>
            <a href="http://localhost:8080/ZaHuoPu/SellUpdate.jsp?se_id=${sell.se_id}">
            
            <button class="mybutton"><font color="blue">修改</font></button>
            </a>
            </td>
              
               
          
          </tr>
          
          
          
          
          
          </c:forEach>
          
          <tr style="text-align:center">
       <td colspan="11">
       <input class="fenye"  type="button"  value="首页"  onclick="goPage(1)">
       <input class="fenye"  type="button"  value="上一页" onclick="goPage(${page}-1)">
       <input class="fenye"  type="button"  value="下一页" onclick="goPage(${page}+1)">
       <input class="fenye"  type="button"  value="尾页"   onclick="goPage(${MaxPage})">
       <input class="fenye"  type="text" readonly="readonly"  value="${page}/${MaxPage}">
       </td> 
       </tr>
   
   
   </table>
   </div>

  </body>
</html>
