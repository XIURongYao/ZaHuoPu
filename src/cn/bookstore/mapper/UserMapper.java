package cn.bookstore.mapper;

import java.util.List;

import cn.bookstore.po.User;

public interface UserMapper {
	
	int addUser(User u);
	
	int deleteUser(int id);
	
	int updateUser(User u);
	
	public List<User> getUser();
	
	public List<User> getUserPage(User u);
	
	public List<User> getUserId(User u); 
	

}
