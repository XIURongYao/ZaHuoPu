/**
 * 这个脚本是为了判断文本框是否为空的。
 */


	
	 function no(){
         
         
         var b1=document.forms["myform"]["s_name"].value;
         if(b1==null||b1==""){
          alert("商品名称为空!请重新填写");
          return false;
         }   
      
         var b2=document.forms["myform"]["s_short"].value;
         if(b2==null||b2==""){
          alert("简称为空!请重新填写");
          return false;
         }
         
         var b3=document.forms["myform"]["s_code"].value;
         if(b3==null||b3==""){
          alert("邮政编码为空!请重新填写");
          return false;
         } 
         
          var b4=document.forms["myform"]["s_site"].value;
         if(b4==null||b4==""){
          alert("地址空!请重新填写");
          return false;
         }      
         
          var b5=document.forms["myform"]["s_phone"].value;
         if(b5==null||b5==""){
          alert("电话为空!请重新填写");
          return false;
         }      
         
          var b6=document.forms["myform"]["s_fax"].value;
         if(b6==null||b6==""){
          alert("传真为空!请重新填写");
          return false;
         } 
         
          var b7=document.forms["myform"]["s_connection"].value;
         if(b7==null||b7==""){
          alert("联系人为空!请重新填写");
          return false;
         }                 
        
      }
	
	

