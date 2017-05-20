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
    
    <title>My JSP 'MerchandiseList.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/SupplierList.css">
	<script type="text/javascript">
	
	function goPage(page){
	
	window.location.href="getMerchandisePage.action?page="+page;
	
	}
	      
	
	
	
	
	
	</script>

  </head>
  
  <body>
   <!-- 引入头部文件 -->
   <jsp:include page="/jsp/index.jsp"></jsp:include> 
   
    <div id="div">
    <table id="table" border="1px solid" cellspacing="0px">
   
   
   
          <tr id="table_tr">
          
          <td colspan="12"><h3>商品信息(Merchandise)</h3></td>
          
          </tr>
          
          
          
          <tr id="table_tr2">
         <td>商品编号：</td>
          <td>供应商ID：</td>
           <td>商品名称：</td>
            <td>简称：</td>
             <td>产地：</td>
             
             <td>单位：</td>
              <td>规格：</td>
               <td>包装：</td>
                <td>批号：</td>
                <td>进货时间：</td>
               
          
              
               <td colspan="2">操作->
      <a href="http://localhost:8080/ZaHuoPu/MerchandiseAdd.jsp">         
                                      添加
               </a>
               </td>
          
          </tr>
   
          <c:forEach items="${Merchandise}" var="m">
                 
          <tr>
                
            <td id="bianhao_td">
            ${m.m_id}
            </td>
            
            
            <td>${m.c_id}</td>
			<td>${m.m_name}</td>
			<td>${m.m_short}</td>
			
			<td>${m.m_site}</td>
			<td>${m.m_unit}</td>
			<td>${m.m_norms}</td>
			<td>${m.m_pack}</td>
			<td>${m.m_number}</td>
			<td>${m.m_date}</td>
            
         
			<!-- 操作 -->
			<td>
			<a href="http://localhost:8080/ZaHuoPu/deleteMerchandise.action?m_id=${m.m_id} ">
			<button><font color="red">删除</font></button>
			</a>
			</td>
            <td>
            <a href="http://localhost:8080/ZaHuoPu/MerchandiseUpdate.jsp?m_id=${m.m_id}
            &c_id=${m.c_id}&m_name=${m.m_name}&m_short=${m.m_short}&m_site=${m.m_site}
            &m_unit=${m.m_unit}&m_norms=${m.m_norms}&m_pack=${m.m_pack}&m_number=${m.m_number}">
            <button><font color="blue">修改</font></button>
            </a>
            </td>  
          </tr>
          </c:forEach>
         
         <!-- 分页 -->
       <tr style="text-align:center">
	       <td colspan="12">
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
