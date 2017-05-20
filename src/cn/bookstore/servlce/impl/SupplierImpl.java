package cn.bookstore.servlce.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import cn.bookstore.mapper.SupplierMapper;
import cn.bookstore.po.Supplier;
import cn.bookstore.servlce.SupplierService;

public class SupplierImpl implements SupplierService{
	
	@Autowired
	private  SupplierMapper supplierMapper;

	@Override
	public List<Supplier> getSupplier() throws Exception {
		
		return supplierMapper.getSupplier();
	}
	
	@Override
    public List<Supplier> getSupplierPage(Supplier s) throws Exception {
		
		return supplierMapper.getSupplierPage(s);
	}

	@Override
	public void addSupplier(Supplier s) throws Exception {
		
		supplierMapper.addSupplier(s);
		
	}

	@Override
	public void deleteSupplier(int s_id) throws Exception {
		
		supplierMapper.deleteSupplier(s_id);
		
	}

	@Override
	public void updateSupplier(Supplier s) {
		
		supplierMapper.updateSupplier(s);
		
	}

}
