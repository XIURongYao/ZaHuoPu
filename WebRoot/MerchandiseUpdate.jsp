<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MerchandiseUpdate.jsp' starting page</title>
    
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
         
            
            var b1=document.forms["myform"]["m_id"].value;
            if(b1==null||b1==""){
             alert("商品编号为空!请重新填写");
             return false;
            }   
         
            var b2=document.forms["myform"]["c_id"].value;
            if(b2==null||b2==""){
             alert("供应商编号为空!请重新填写");
             return false;
            }
            
            var b3=document.forms["myform"]["m_name"].value;
            if(b3==null||b3==""){
             alert("商品名字为空!请重新填写");
             return false;
            } 
            
             var b4=document.forms["myform"]["m_short"].value;
            if(b4==null||b4==""){
             alert("简称为空!请重新填写");
             return false;
            }      
            
             var b5=document.forms["myform"]["m_site"].value;
            if(b5==null||b5==""){
             alert("产地为空!请重新填写");
             return false;
            }      
            
             var b6=document.forms["myform"]["m_unit"].value;
            if(b6==null||b6==""){
             alert("单位为空!请重新填写");
             return false;
            } 
            
             var b7=document.forms["myform"]["m_norms"].value;
            if(b7==null||b7==""){
             alert("规格值为空!请重新填写");
             return false;
            }  
            
              var b8=document.forms["myform"]["m_pack"].value;
            if(b8==null||b8==""){
             alert("包装为空!请重新填写");
             return false;
            } 
            
             var b8=document.forms["myform"]["m_number"].value;
            if(b8==null||b8==""){
             alert("批号为空!请重新填写");
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
              <h2><span style="color:gray;" onmouseover="dianji('1s','jichu')">基础功能 > 商品信息管理 </span> >修改商品信息（Merchandise）</h2>
              <hr/>
              
              <div style="width:500px;border:0px solid red;margin:auto;height:350px;
        text-align:center;">
        <form action="http://localhost:8080/ZaHuoPu/updateMerchandise.action" 
        method="post" name="myform" onsubmit="return no()">
        
        <table style="line-height:30px">
	        <tr>
		        <td>
		         商品编号：
		        </td>
		        <td>
		        <input type="text" name="m_id" value="<%=request.getParameter("m_id")%>" readonly="readonly">
		        </td>
	        </tr>
	        
	        <tr>
		        <td>
		        供应商ID：
		        </td>
		        <td>
		        <input type="text" name="c_id" value="<%=request.getParameter("c_id")%>">
		        </td>
	        </tr>
	        
	        <tr>
		        <td>
		         商品名称：
		        </td>
		        <td>
		        <input type="text" name="m_name" value="<%=request.getParameter("m_name")%>">
		        </td>
	        </tr>
	        
	        <tr>
		        <td>
		        简&nbsp;&nbsp;称：
		        </td>
		        <td>
		        <input type="text" name="m_short" value="<%=request.getParameter("m_short")%>">
		        </td>
	        </tr>
	        
	        <tr>
		        <td>
		        产&nbsp;&nbsp;地：
		        </td>
		        <td>
		        <input type="text" name="m_site" value="<%=request.getParameter("m_site")%>">
		        </td>
	        </tr>
	        
	        <tr>
		        <td>
		        单&nbsp;&nbsp;位：
		        </td>
		        <td>
		        <input type="text" name="m_unit" value="<%=request.getParameter("m_unit")%>">
		        </td>
	        </tr>
	        
	        <tr>
		        <td>
		         规&nbsp;&nbsp;格：
		        </td>
		        <td>
		        <input type="text" name="m_norms" value="<%=request.getParameter("m_norms")%>">
		        </td>
	        </tr>
	        
	          <tr>
		        <td>
		        包&nbsp;&nbsp;装：
		        </td>
		        <td>
		        <input type="text" name="m_pack" value="<%=request.getParameter("m_pack")%>">
		        </td>
	        </tr>
	        
	          <tr>
			        <td>
			        批&nbsp;&nbsp;号：
			        </td>
			        <td>
			         <input type="text" name="m_number" value="<%=request.getParameter("m_number")%>">
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
