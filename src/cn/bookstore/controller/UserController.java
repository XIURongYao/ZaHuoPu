package cn.bookstore.controller;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.bookstore.po.User;
import cn.bookstore.servlce.UserService;


@Controller
public class UserController {
	
	
	@Autowired
	private UserService user;
	
	
	@RequestMapping(value=("/getUser.action"))
	public ModelAndView getUser() throws Exception{
		
		List<User> li=user.getUser();
		
		ModelAndView mv=new ModelAndView();
		
		mv.addObject("User",li);
		
		mv.setViewName("UserList");
		return mv;		
	}
	
	

	@RequestMapping(value=("/getUserId.action"))
	public ModelAndView getUserId(HttpServletRequest request) throws Exception{
		String username = request.getParameter("username");
		User u=new User();
		u.setUserName(username);
		List<User> li=user.getUserId(u);
		
		ModelAndView mv=new ModelAndView();
		
		mv.addObject("User",li);
		
		mv.setViewName("UserIdList");
		return mv;		
	}
	
	
	
	
	@RequestMapping(value=("/getUserPage.action"))
	public void getUserPage(HttpServletRequest request,HttpServletResponse response,int page) 
			throws Exception{
		
		if(page>getMaxPage()){
			
			page=getMaxPage();
		}
		
		if(page<1){
			
			page=1;
		}
		
		int xiabiao=(page-1)*10;
		
		if(xiabiao<1){
			
			xiabiao=0;
			
		}
		User u=new User();
		u.setXiabiao(xiabiao);
		
		request.setAttribute("page", page);
		
		request.setAttribute("MaxPage", getMaxPage());
		
		List<User> li=user.getUserPage(u);
		
		request.setAttribute("User", li);

		request.getRequestDispatcher("/WEB-INF/jsp/UserList.jsp").forward(request, response);
		
		
			
	}
	
	public    int   getMaxPage() throws Exception{
		
	      int maxPage=0;
	      
	      //求出多少行  
	      List<User> list=user.getUser();
	      int  size=list.size();
	      //一页5行
	      if(size%10==0){
	    	    maxPage=size/10;
	      }else{
	    	    maxPage=size/10+1;
	      }
	      return  maxPage;
  }
	

	@RequestMapping(value=("/addUser.action"))
	public String addUser(User u) throws Exception{	
		
		boolean bn=false;			
		List<User> list = user.getUser();
		Iterator<User> it = list.iterator();
			while(it.hasNext()){
				User uu= it.next();
				if(uu.getUserName().equals(u.getUserName())){
					 bn=true;
					 break;
				}
			}	
			if(bn){
				return "redirect:jsp/ShiBai2.jsp";
			}
			
	    user.addUser(u);
	
		return "redirect:getUserPage.action?page="+getMaxPage();
	
	}
	
	@RequestMapping(value=("/updateUser.action"))
	public String updateUser(User u) throws Exception{
		
		user.updateUser(u);
		
		
		return "redirect:getUserPage.action?page="+getMaxPage();
		
		
	}
	
	
	
	@RequestMapping(value=("/updateUser2.action"))
	public String updateUser2(User u) throws Exception{
		
		
		
		
		user.updateUser(u);
		
		return "redirect:/jsp/getUserId.jsp";
		
		
	}
	
	
	@RequestMapping(value=("/deleteUser.action"))
	public String deleteUser(int id) throws Exception{
		
		user.deleteUser(id);
		
		return "redirect:getUserPage.action?page="+getMaxPage();
		
		
	}
	

	

}
