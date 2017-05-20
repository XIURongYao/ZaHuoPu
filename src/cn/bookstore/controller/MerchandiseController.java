package cn.bookstore.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.bookstore.po.Merchandise;
import cn.bookstore.servlce.MerchandiseService;


@Controller
public class MerchandiseController {
	
	@Autowired
	private MerchandiseService merchandise;
	
	
	@RequestMapping(value=("/getMerchandise.action"))
	public ModelAndView getMerchandise() throws Exception{
		
		List<Merchandise> li=merchandise.getMerchandise();
		
		ModelAndView mv=new ModelAndView();
		
		mv.addObject("Merchandise",li);
		
		mv.setViewName("MerchandiseList");
		return mv;	
	}
	
	
	@RequestMapping(value=("/getMerchandisePage.action"))
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
			
			Merchandise m=new Merchandise();
			
			m.setXiabiao(xiabiao);
			
			request.setAttribute("page", page);
			
			request.setAttribute("MaxPage", getMaxPage());
			
	        List<Merchandise> li=merchandise.getMerchandisePage(m);
	        
	    	request.setAttribute("Merchandise", li);

			request.getRequestDispatcher("/WEB-INF/jsp/MerchandiseList.jsp").forward(request, response);
		
		}
		
		public    int   getMaxPage() throws Exception{
			
		      int maxPage=0;
		      
		      //求出多少行  
		      List<Merchandise> list=merchandise.getMerchandise();
		      int  size=list.size();
		      //一页5行
		      if(size%10==0){
		    	    maxPage=size/10;
		      }else{
		    	    maxPage=size/10+1;
		      }
		      return  maxPage;
	    }
	
	
	
	
	
	

	@RequestMapping(value=("/addMerchandise.action"))
	public String addSell(Merchandise m) throws Exception{		
		merchandise.addMerchandise(m);
		
		return "redirect:getMerchandisePage.action?page="+getMaxPage();
	
	}
	
	@RequestMapping(value=("/updateMerchandise.action"))
	public String updateSell(Merchandise m) throws Exception{
		
		merchandise.updateMerchandise(m);
		
		
		return "redirect:getMerchandisePage.action?page="+getMaxPage();
		
		
	}
	
	
	@RequestMapping(value=("/deleteMerchandise.action"))
	public String deleteSell(Merchandise m) throws Exception{
		
		merchandise.deleteMerchandise(m);
		
		return "redirect:getMerchandisePage.action?page="+getMaxPage();
		
		
	}
	

	
	
	

}
