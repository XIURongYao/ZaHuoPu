package cn.bookstore.mapper;

import java.util.List;

import cn.bookstore.po.Client;



public interface ClientMapper {
	
    int addClient(Client c);
	
	int deleteClient(int c_id);
	
	int updateClient(Client c);
	
	public List<Client> getClient();
	
	public List<Client> getClientPage(Client c);


}
