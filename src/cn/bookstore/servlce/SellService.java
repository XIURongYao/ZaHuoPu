package cn.bookstore.servlce;

import java.util.List;


import cn.bookstore.po.Sell;

public interface SellService {
	
	 //��ѯ����ͼ��
	public List<Sell> getSell() throws Exception;
	
	public List<Sell> getSellPage(Sell s) throws Exception;
	
	//����ͼ��
    public void addSell(Sell s) throws Exception;
    
    
	//ɾ��ͼ��
	public void  deleteSell(Sell s) throws Exception;
	
	
	public void updateSell(Sell s);

}
