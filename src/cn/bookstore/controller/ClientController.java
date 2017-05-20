package cn.bookstore.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.bookstore.po.Client;
import cn.bookstore.servlce.ClientService;



@Controller
public class ClientController {
	
	
	@Autowired
	private ClientService client;
	
	
	@RequestMapping(value=("/getClient.action"))
	public ModelAndView getClient() throws Exception{
		
		List<Client> li=client.getClient();
		
		ModelAndView mv=new ModelAndView();
		
		mv.addObject("Client",li);
		
		mv.setViewName("ClientList");
		return mv;
		
		
		
		
	}
	
	@RequestMapping(value=("/getClientPage.action"))
	public  void getClientPage(HttpServletRequest request,HttpServletResponse response,int page)
	throws Exception{
		
		
	       if(page<1){
				
				page=1;
			}
			
			if(page>getMaxPage()){
				
				page=getMaxPage();
			}
			
			
			
			int xiabiao=(page-1)*10;
			
            if(xiabiao<1){
				
				xiabiao=0;
				
			}
			
			Client c=new Client();
			
			c.setXiabiao(xiabiao);
			
			request.setAttribute("page", page);
			
			request.setAttribute("MaxPage", getMaxPage());
			
	        List<Client> li=client.getClientpage(c);
	        
	    	request.setAttribute("Client", li);

			request.getRequestDispatcher("/WEB-INF/jsp/ClientList.jsp").forward(request, response);
		
		}
		
		public    int   getMaxPage() throws Exception{
			
		      int maxPage=0;
		      
		      //求出多少行  
		      List<Client> list=client.getClient();
		      int  size=list.size();
		      //一页5行
		      if(size%10==0){
		    	    maxPage=size/10;
		      }else{
		    	    maxPage=size/10+1;
		      }
		      return  maxPage;
	    }
		
	

	@RequestMapping(value=("/addClient.action"))
	public String addClient(Client c) throws Exception{		
		client.addClient(c);
		
		return "redirect:getClientPage.action?page=1";
	
	}
	
	@RequestMapping(value=("/updateClient.action"))
	public String updateClient(Client c) throws Exception{
		
		client.updateClient(c);
		
		
		return "redirect:getClientPage.action?page=1";
		
		
	}
	
	
	@RequestMapping(value=("/deleteClient.action"))
	public String deleteClient(int c_id) throws Exception{
		
		client.deleteClient(c_id);
		
		return "redirect:getClientPage.action?page=1";
		
		
	}
	

	
	
	
	

}
