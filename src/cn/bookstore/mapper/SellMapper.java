package cn.bookstore.mapper;

import java.util.List;


import cn.bookstore.po.Sell;

public interface SellMapper {
	
	    int addSell(Sell s);
		
		int deleteSell(Sell s);
		
		int updateSell(Sell s);
		
		public List<Sell> getSell();
		
		public List<Sell> getSellPage(Sell s);

}
