package cn.bookstore.servlce;

import java.util.List;


import cn.bookstore.po.User;



public interface UserService {
	
	 //��ѯ����ͼ��
	public List<User> getUser() throws Exception;
	
	//����ͼ��
    public void addUser(User u) throws Exception;
    
    
	//ɾ��ͼ��
	public void  deleteUser(int id) throws Exception;
	
	
	public void updateUser(User u);

	List<User> getUserPage(User u);
	
	public List<User> getUserId(User u); 

}
