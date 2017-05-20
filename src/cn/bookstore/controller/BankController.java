package cn.bookstore.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.bookstore.po.Bank;
import cn.bookstore.servlce.BankService;


@Controller
public class BankController {
	
	
	
	@Autowired
	private BankService bank;
	
	
	@RequestMapping(value=("/getBank.action"))
	public ModelAndView getBank() throws Exception{
		
		List<Bank> li=bank.getBank();
		
		ModelAndView mv=new ModelAndView();
		
		mv.addObject("Bank",li);
		
		mv.setViewName("BankList");
		return mv;	
		
	}
	
	
	
	@RequestMapping(value=("/getBankPage.action"))
	public  void getBankPage(HttpServletRequest request,HttpServletResponse response,int page)
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
		
		Bank b=new Bank();
		
		b.setXiabiao(xiabiao);
		
		request.setAttribute("page", page);
		
		request.setAttribute("MaxPage", getMaxPage());
		
        List<Bank> li=bank.getBankpage(b);
        
    	request.setAttribute("Bank", li);

		request.getRequestDispatcher("/WEB-INF/jsp/BankList.jsp").forward(request, response);
	
	}
	
	public    int   getMaxPage() throws Exception{
		
	      int maxPage=0;
	      
	      //求出多少行  
	      List<Bank> list=bank.getBank();
	      int  size=list.size();
	      //一页5行
	      if(size%10==0){
	    	    maxPage=size/10;
	      }else{
	    	    maxPage=size/10+1;
	      }
	      return  maxPage;
    }
	

	@RequestMapping(value=("/addBank.action"))
	public String addBank(Bank b) throws Exception{		
		bank.addBank(b);
		
		return "redirect:getBankPage.action?page=1";
	
	}
	
	@RequestMapping(value=("/updateBank.action"))
	public String updateBank(Bank b) throws Exception{
		
		bank.updateBank(b);
		
		
		return "redirect:getBankPage.action?page=1";
		
		
	}
	
	
	@RequestMapping(value=("/deleteBank.action"))
	public String deleteBank(int b_id) throws Exception{
		
		bank.deleteBank(b_id);
		
		return "redirect:getBankPage.action?page=1";
		
		
	}
	
	
	

	
	

}
