<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Merchandise.jsp' starting page</title>
    
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
         
            
            var b1=document.forms["myform"]["c_id"].value;
            if(b1==null||b1==""){
             alert("商品值为空!请重新填写");
             return false;
            }   
         
            var b2=document.forms["myform"]["m_name"].value;
            if(b2==null||b2==""){
             alert("商品值为空!请重新填写");
             return false;
            }
            
            var b3=document.forms["myform"]["m_short"].value;
            if(b3==null||b3==""){
             alert("商品值为空!请重新填写");
             return false;
            } 
            
             var b4=document.forms["myform"]["m_site"].value;
            if(b4==null||b4==""){
             alert("商品值为空!请重新填写");
             return false;
            }      
            
             var b5=document.forms["myform"]["m_pack"].value;
            if(b5==null||b5==""){
             alert("商品值为空!请重新填写");
             return false;
            }      
            
             var b6=document.forms["myform"]["m_unit"].value;
            if(b6==null||b6==""){
             alert("商品值为空!请重新填写");
             return false;
            } 
            
             var b7=document.forms["myform"]["m_norms"].value;
            if(b7==null||b7==""){
             alert("商品值为空!请重新填写");
             return false;
            }  
            
             var b8=document.forms["myform"]["m_number"].value;
            if(b8==null||b8==""){
             alert("商品值为空!请重新填写");
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
        <h2><span style="color:gray;" onmouseover="dianji('1s','jichu')">基础功能 > 商品信息管理 </span> > 增加商品（Merchandise）</h2>
        <hr/>
        
        <div style="width:500px;border:0px solid red;margin:auto;height:350px;
        text-align:center;">
        <form action="http://localhost:8080/ZaHuoPu/addMerchandise.action" method="post" name="myform"
        onsubmit="return no()" >
        
     
     供应商ID：<input type="text" name="c_id"><br/><br/>
        商品名称：<input type="text" name="m_name"><br/><br/>
  简&nbsp;&nbsp;称：<input type="text" name="m_short"><br/><br/>
  
     产&nbsp;&nbsp;地：<input type="text" name="m_site"><br/><br/>
   单&nbsp;&nbsp;位：<input type="text" name="m_unit"><br/><br/>
       规&nbsp;&nbsp;格：<input type="text" name="m_norms"><br/><br/>
 包&nbsp;&nbsp;装：<input type="text" name="m_pack"><br/><br/>
  批&nbsp;&nbsp;号：<input type="text" name="m_number"><br/><br/>
     
     
     
        <input type="submit" value="增加" style="font-family: 黑体"> 
        <input type="reset"  style="font-family: 黑体"> 
        </form>
   </div> 
   <hr/>    
      </div>     
     
  </body>
  
</html>
