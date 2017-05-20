<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Sell.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/SupplierAdd.css">

<script type="text/javascript">
  
         function no(){
         
            
            var b1=document.forms["myform"]["m_id"].value;
            if(b1==null||b1==""){
             alert("商品ID为空!请重新填写");
             return false;
            }   
         
            var b2=document.forms["myform"]["m_name"].value;
            if(b2==null||b2==""){
             alert("商品名称为空!请重新填写");
             return false;
            }
            
            var b3=document.forms["myform"]["m_norms"].value;
            if(b3==null||b3==""){
             alert("商品规格为空!请重新填写");
             return false;
            } 
            
             var b4=document.forms["myform"]["m_price"].value;
            if(b4==null||b4==""){
             alert("商品单价为空!请重新填写");
             return false;
            }      
            
             var b5=document.forms["myform"]["m_num"].value;
            if(b5==null||b5==""){
             alert("商品数量为空!请重新填写");
             return false;
            }      
            
             var b6=document.forms["myform"]["se_price"].value;
            if(b6==null||b6==""){
             alert("商品总价为空!请重新填写");
             return false;
            } 
            
             var b7=document.forms["myform"]["c_name"].value;
            if(b7==null||b7==""){
             alert("客户姓名为空!请重新填写");
             return false;
            }  
            
             var b8=document.forms["myform"]["se_site"].value;
            if(b8==null||b8==""){
             alert("客户地址为空!请重新填写");
             return false;
            }                     
           
         }
         
  </script>




  </head>
  
  
  
  
  <body>
    <jsp:include page="jsp/index.jsp"></jsp:include> 
      
      
       <div style="border:0px solid red;margin:auto;
       height:450px;">
   <!-- 增加会员-->
        <h2><span style="color:gray;" onmouseover="dianji('3s','jichu')">销售管理 > 销售信息查看 </span> >增加销售商品(Sell)</h2>
        <hr/>
        <div style="width:500px;border:0px solid red;margin:auto;height:350px;
        text-align:center;">
        <form action="http://localhost:8080/ZaHuoPu/addSell.action" method="post"
        name="myform" onsubmit="return no()">
        
         <!-- 表格 -->
   <table id="table">
   
			   <tr>  
			   <td>
			      商品ID：
			   </td>
			   <td>
			   <input type="text" name="m_id">
			   </td>    
			   </tr>
			   
			   <tr>  
			   <td>
			   商品名称：
			   </td>
			   <td>
			  <input type="text" name="m_name">
			   </td>    
			   </tr>
			   
			   <tr>  
			   <td>
			     商品规格：
			   </td>
			   <td>
			   <input type="text" name="m_norms">
			   </td>    
			   </tr>
			   
			   <tr>  
			   <td>
			      商品单价：
			   </td>
			   <td>
			   <input type="text" name="m_price">
			   </td>    
			   </tr>
			   
			   <tr>  
			   <td>
			    商品数量：
			   </td>
			   <td>
			  <input type="text" name="m_num">
			   </td>    
			   </tr>
			   
			    <tr>  
			   <td>
			  商品总价：
			   </td>
			   <td>
			  <input type="text" name="se_price">
			   </td>    
			   </tr>
			   
			      <tr>  
			   <td>
			  客户姓名：
			   </td>
			   <td>
			 <input type="text" name="c_name">
			   </td>    
			   </tr>
			   
			      <tr>  
			   <td>
			  地址：
			   </td>
			   <td>
			   <input type="text" name="se_site"> 
			   </td>    
			   </tr>
			   
			   <tr>  
			   <td>
			   </td>
			   <td style="text-align:left">
			   <input type="submit" value="增加" style="font-family: 黑体"> 
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
