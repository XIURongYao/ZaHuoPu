package cn.bookstore.servlce;

import java.util.List;


import cn.bookstore.po.Supplier;

public interface SupplierService {
	
	
	 //��ѯ����ͼ��
		public List<Supplier> getSupplier() throws Exception;
		
		public List<Supplier> getSupplierPage(Supplier s) throws Exception;
		
		//����ͼ��
	    public void addSupplier(Supplier s) throws Exception;
	    
	    
		//ɾ��ͼ��
		public void  deleteSupplier(int s_id) throws Exception;
		
		
		public void updateSupplier(Supplier s);

}
