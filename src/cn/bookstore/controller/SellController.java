package cn.bookstore.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;




import cn.bookstore.po.Sell;
import cn.bookstore.servlce.SellService;

@Controller
public class SellController {
	
	@Autowired
	private SellService sell;
	
	
	@RequestMapping(value=("/getSell.action"))
	public ModelAndView getSell() throws Exception{
		
		List<Sell> li=sell.getSell();
		
		ModelAndView mv=new ModelAndView();
		
		mv.addObject("Sell",li);
		
		mv.setViewName("SellList");
		return mv;
	
	}
	
	@RequestMapping(value=("/getSellPage.action"))
	public  void getSellPage(HttpServletRequest request,HttpServletResponse response,int page)
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
			
			Sell s=new Sell();
			
			s.setXiabiao(xiabiao);
			
			request.setAttribute("page", page);
			
			request.setAttribute("MaxPage", getMaxPage());
			
	        List<Sell> li=sell.getSellPage(s);
	        
	    	request.setAttribute("Sell", li);

			request.getRequestDispatcher("/WEB-INF/jsp/SellList.jsp").forward(request, response);
		
		}
		
		public    int   getMaxPage() throws Exception{
			
		      int maxPage=0;
		      
		      //求出多少行  
		      List<Sell> list=sell.getSell();
		      int  size=list.size();
		      //一页5行
		      if(size%10==0){
		    	    maxPage=size/10;
		      }else{
		    	    maxPage=size/10+1;
		      }
		      return  maxPage;
	    }
		
	
	
	

	@RequestMapping(value=("/addSell.action"))
	public String addSell(Sell s) throws Exception{		
		sell.addSell(s);
		
		return "redirect:getSellPage.action?page="+getMaxPage();
	
	}
	
	@RequestMapping(value=("/updateSell.action"))
	public String updateSell(Sell s) throws Exception{
		
		sell.updateSell(s);
		
		
		return "redirect:getSellPage.action?page="+getMaxPage();
		
		
	}
	
	
	@RequestMapping(value=("/deleteSell.action"))
	public String deleteSell(Sell s) throws Exception{
		
		sell.deleteSell(s);
		
		return "redirect:getSellPage.action?page="+getMaxPage();
		
		
	}
	

	
	
	

}
