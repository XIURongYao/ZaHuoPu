package cn.bookstore.servlce;

import java.util.List;

import cn.bookstore.po.Bank;


public interface BankService {
	
	 //��ѯ����ͼ��
		public List<Bank> getBank() throws Exception;
		
		
		
		//����ͼ��
	    public void addBank(Bank b) throws Exception;
	    
	    
		//ɾ��ͼ��
		public void  deleteBank(int b_id) throws Exception;
		
		
		public void updateBank(Bank b);



		List<Bank> getBankpage(Bank b);
		
		
	

}
