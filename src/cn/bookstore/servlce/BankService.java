package cn.bookstore.servlce;

import java.util.List;

import cn.bookstore.po.Bank;


public interface BankService {
	
	 //查询所有图书
		public List<Bank> getBank() throws Exception;
		
		
		
		//增加图书
	    public void addBank(Bank b) throws Exception;
	    
	    
		//删除图书
		public void  deleteBank(int b_id) throws Exception;
		
		
		public void updateBank(Bank b);



		List<Bank> getBankpage(Bank b);
		
		
	

}
