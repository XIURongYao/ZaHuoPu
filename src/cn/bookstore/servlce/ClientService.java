package cn.bookstore.servlce;

import java.util.List;

import cn.bookstore.po.Client;


public interface ClientService {
	
	 //查询所有图书
	public List<Client> getClient() throws Exception;
	
	//增加图书
    public void addClient(Client c) throws Exception;
    
    
	//删除图书
	public void  deleteClient(int c_id) throws Exception;
	
	
	public void updateClient(Client c);
	

	List<Client> getClientpage(Client c);
	
	

}
