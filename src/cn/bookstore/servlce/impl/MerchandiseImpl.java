package cn.bookstore.servlce.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;


import cn.bookstore.mapper.MerchandiseMapper;
import cn.bookstore.po.Merchandise;
import cn.bookstore.servlce.MerchandiseService;

public class MerchandiseImpl implements MerchandiseService{
	
	@Autowired  //自动生成
	private MerchandiseMapper merchandiseMapper;

	@Override
	public List<Merchandise> getMerchandise() throws Exception {
		
		return merchandiseMapper.getMerchandise();
	}
	
	@Override
    public List<Merchandise> getMerchandisePage(Merchandise m) throws Exception {
		
		return merchandiseMapper.getMerchandisePage(m);
	} 
	

	@Override
	public void addMerchandise(Merchandise m) throws Exception {
		
		merchandiseMapper.addMerchandise(m);
		
	}

	@Override
	public void deleteMerchandise(Merchandise m) throws Exception {
		
		merchandiseMapper.deleteMerchandise(m);
		
	}

	@Override
	public void updateMerchandise(Merchandise m) {
		
		merchandiseMapper.updateMerchandise(m);
		
	}

}
