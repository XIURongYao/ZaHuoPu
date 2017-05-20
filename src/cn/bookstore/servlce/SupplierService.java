package cn.bookstore.servlce;

import java.util.List;


import cn.bookstore.po.Supplier;

public interface SupplierService {
	
	
	 //查询所有图书
		public List<Supplier> getSupplier() throws Exception;
		
		public List<Supplier> getSupplierPage(Supplier s) throws Exception;
		
		//增加图书
	    public void addSupplier(Supplier s) throws Exception;
	    
	    
		//删除图书
		public void  deleteSupplier(int s_id) throws Exception;
		
		
		public void updateSupplier(Supplier s);

}
