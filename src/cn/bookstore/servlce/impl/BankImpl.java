package cn.bookstore.servlce.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import cn.bookstore.mapper.BankMapper;

import cn.bookstore.po.Bank;
import cn.bookstore.servlce.BankService;

public class BankImpl implements BankService{

	@Autowired  //自动生成
	private BankMapper bankMapper;
	
	@Override
	public List<Bank> getBank() throws Exception {
		
		return bankMapper.getBank();
	}
	
	
	@Override
	public List<Bank> getBankpage(Bank b){
		
		return bankMapper.getBankPage(b);
	}

	@Override
	public void addBank(Bank b) throws Exception {
		
		bankMapper.addBank(b);
		
	}

	@Override
	public void deleteBank(int b_id) throws Exception {
		
		bankMapper.deleteBank(b_id);
	}

	@Override
	public void updateBank(Bank b) {
		
		bankMapper.updateBank(b);
		
	}

}
