package cn.bookstore.servlce;

import java.util.List;

import cn.bookstore.po.Client;


public interface ClientService {
	
	 //��ѯ����ͼ��
	public List<Client> getClient() throws Exception;
	
	//����ͼ��
    public void addClient(Client c) throws Exception;
    
    
	//ɾ��ͼ��
	public void  deleteClient(int c_id) throws Exception;
	
	
	public void updateClient(Client c);
	

	List<Client> getClientpage(Client c);
	
	

}
