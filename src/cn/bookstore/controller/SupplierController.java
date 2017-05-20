package cn.bookstore.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;






import cn.bookstore.po.Supplier;
import cn.bookstore.servlce.SupplierService;

@Controller
public class SupplierController {
	
	@Autowired
	private SupplierService supplier;
	
	
	@RequestMapping(value=("/getSupplier.action"))
	public ModelAndView getSupplier() throws Exception{
		
		List<Supplier> li=supplier.getSupplier();
		
		ModelAndView mv=new ModelAndView();
		
		mv.addObject("Supplier",li);
		
		mv.setViewName("SupplierList");
		return mv;
	
	}
	
	
	@RequestMapping(value=("/getSupplierPage.action"))
	public  void getSupplierPage(HttpServletRequest request,HttpServletResponse response,int page)
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
			
			Supplier s=new Supplier();
			
			s.setXiabiao(xiabiao);
			
			request.setAttribute("page", page);
			
			request.setAttribute("MaxPage", getMaxPage());
			
	        List<Supplier> li=supplier.getSupplierPage(s);
	        
	    	request.setAttribute("Supplier", li);

			request.getRequestDispatcher("/WEB-INF/jsp/SupplierList.jsp").forward(request, response);
		
		}
		
		public    int   getMaxPage() throws Exception{
			
		      int maxPage=0;
		      
		      //求出多少行  
		      List<Supplier> list=supplier.getSupplier();
		      int  size=list.size();
		      //一页5行
		      if(size%10==0){
		    	    maxPage=size/10;
		      }else{
		    	    maxPage=size/10+1;
		      }
		      return  maxPage;
	    }
	

	@RequestMapping(value=("/addSupplier.action"))
	public String addSupplier(Supplier s) throws Exception{		
		supplier.addSupplier(s);
		
		return "redirect:getSupplierPage.action?page="+getMaxPage();
	
	}
	
	@RequestMapping(value=("/updateSupplier.action"))
	public String updateSell(Supplier s) throws Exception{
		
		supplier.updateSupplier(s);
		
		
		return "redirect:getSupplierPage.action?page="+getMaxPage();
		
		
	}
	
	
	@RequestMapping(value=("/deleteSupplier.action"))
	public String deleteSupplier(int s_id) throws Exception{
		
		supplier.deleteSupplier(s_id);
		
		return "redirect:getSupplierPage.action?page="+getMaxPage();
		
		
	}
	

	
	

}
