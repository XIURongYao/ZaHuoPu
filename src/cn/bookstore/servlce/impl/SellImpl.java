package cn.bookstore.servlce.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;


import cn.bookstore.mapper.SellMapper;
import cn.bookstore.po.Sell;
import cn.bookstore.servlce.SellService;

public class SellImpl implements SellService{
	
	@Autowired  //自动生成
	private SellMapper sellMapper;

	@Override
	public List<Sell> getSell() throws Exception {
		
		return sellMapper.getSell();
	}
	
	@Override
    public List<Sell> getSellPage(Sell s) throws Exception {
		
		return sellMapper.getSellPage(s);
	}

	@Override
	public void addSell(Sell s) throws Exception {
		
		sellMapper.addSell(s);
		
	}

	@Override
	public void deleteSell(Sell s) throws Exception {
		
		sellMapper.deleteSell(s);
	}

	@Override
	public void updateSell(Sell s) {
		
		sellMapper.updateSell(s);
		
	}
	

}
