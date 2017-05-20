package cn.bookstore.servlce.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import cn.bookstore.mapper.ClientMapper;

import cn.bookstore.po.Client;
import cn.bookstore.servlce.ClientService;

public class ClientImpl implements ClientService{

	
	@Autowired  //自动生成
	private ClientMapper clientMapper;
	
	
	
	@Override
	public List<Client> getClient() throws Exception {
		
		return clientMapper.getClient();
	}
	
	@Override
	public List<Client> getClientpage(Client c){
		
		return clientMapper.getClientPage(c);
	}

	@Override
	public void addClient(Client c) throws Exception {
		
		clientMapper.addClient(c);
		
	}

	@Override
	public void deleteClient(int c_id) throws Exception {
		
		clientMapper.deleteClient(c_id);
		
	}

	@Override
	public void updateClient(Client c) {
		
		clientMapper.updateClient(c);
		
	}

}
