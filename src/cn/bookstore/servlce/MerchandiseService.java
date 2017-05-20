package cn.bookstore.servlce;

import java.util.List;


import cn.bookstore.po.Merchandise;

public interface MerchandiseService {
	
	 //查询所有图书
		public List<Merchandise> getMerchandise() throws Exception;
		
		public List<Merchandise> getMerchandisePage(Merchandise m) throws Exception;
		
		//增加图书
	    public void addMerchandise(Merchandise m) throws Exception;
	    
	    
		//删除图书
		public void  deleteMerchandise(Merchandise m) throws Exception;
		
		
		public void updateMerchandise(Merchandise m);
		
	

}
