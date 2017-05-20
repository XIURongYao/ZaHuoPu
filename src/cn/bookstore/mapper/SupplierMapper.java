package cn.bookstore.mapper;

import java.util.List;


import cn.bookstore.po.Supplier;

public interface SupplierMapper {
	
	    int addSupplier(Supplier s);
		
		int deleteSupplier(int s_id);
		
		int updateSupplier(Supplier s);
		
		public List<Supplier> getSupplier();
		
		public List<Supplier> getSupplierPage(Supplier s);

}
