package cn.bookstore.servlce;

import java.util.List;


import cn.bookstore.po.Sell;

public interface SellService {
	
	 //查询所有图书
	public List<Sell> getSell() throws Exception;
	
	public List<Sell> getSellPage(Sell s) throws Exception;
	
	//增加图书
    public void addSell(Sell s) throws Exception;
    
    
	//删除图书
	public void  deleteSell(Sell s) throws Exception;
	
	
	public void updateSell(Sell s);

}
