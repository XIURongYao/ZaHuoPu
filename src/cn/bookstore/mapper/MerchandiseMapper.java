package cn.bookstore.mapper;

import java.util.List;


import cn.bookstore.po.Merchandise;

public interface MerchandiseMapper {
	
    int addMerchandise(Merchandise m);
	
	int deleteMerchandise(Merchandise m);
	
	int updateMerchandise(Merchandise m);
	
	public List<Merchandise> getMerchandise();
	
	public List<Merchandise> getMerchandisePage(Merchandise m);

}
