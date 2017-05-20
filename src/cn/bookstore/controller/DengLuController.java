package cn.bookstore.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.bookstore.po.User;
import cn.bookstore.servlce.UserService;

@Controller
public class DengLuController {
	
	@Autowired
	private UserService user;
	
	
	@RequestMapping(value=("/getUserMiMa.action"))
	public String getUser(HttpServletRequest request,HttpServletResponse response) throws Exception{
		
		
		String   zhanghao=request.getParameter("zhanghao");
        String   mima=request.getParameter("mima");
        String   jizhu=request.getParameter("jizhu");
    
		request.getSession().setAttribute("username", zhanghao);
		
		
		
		List<User> li=user.getUser();
		
		for(User u : li){
			
			String username=u.getUserName();
			String password=u.getPassword();
			
			
			
			if(username.equals(zhanghao)&&password.equals(mima)){
				
						 if("on".equals(jizhu)){
							 request.getSession().setAttribute("username2", zhanghao);
							 request.getSession().setAttribute("password2", mima);
					         
				          }
				
				
		            	  return "redirect:jsp/zhuye.jsp"; 
		            	 
		             }
				
			}
			
		
		
		return "redirect:jsp/ShiBai.jsp";
									
	}
		
}
