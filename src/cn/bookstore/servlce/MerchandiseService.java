package cn.bookstore.servlce;

import java.util.List;


import cn.bookstore.po.Merchandise;

public interface MerchandiseService {
	
	 //��ѯ����ͼ��
		public List<Merchandise> getMerchandise() throws Exception;
		
		public List<Merchandise> getMerchandisePage(Merchandise m) throws Exception;
		
		//����ͼ��
	    public void addMerchandise(Merchandise m) throws Exception;
	    
	    
		//ɾ��ͼ��
		public void  deleteMerchandise(Merchandise m) throws Exception;
		
		
		public void updateMerchandise(Merchandise m);
		
	

}
