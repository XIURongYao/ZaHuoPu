package cn.bookstore.mapper;

import java.util.List;

import cn.bookstore.po.Bank;


public interface BankMapper {
	
	
	
    int addBank(Bank b);
	
	int deleteBank(int b_id);
	
	int updateBank(Bank b);
	
	public List<Bank> getBank();
	
	public List<Bank> getBankPage(Bank b);

}
