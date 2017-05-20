package cn.bookstore.servlce;

import java.util.List;


import cn.bookstore.po.User;



public interface UserService {
	
	 //查询所有图书
	public List<User> getUser() throws Exception;
	
	//增加图书
    public void addUser(User u) throws Exception;
    
    
	//删除图书
	public void  deleteUser(int id) throws Exception;
	
	
	public void updateUser(User u);

	List<User> getUserPage(User u);
	
	public List<User> getUserId(User u); 

}
