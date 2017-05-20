package cn.bookstore.servlce.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import cn.bookstore.mapper.UserMapper;
import cn.bookstore.po.User;
import cn.bookstore.servlce.UserService;

public class UserImpl implements UserService{

	@Autowired
	private UserMapper userMapper;

	@Override
	public List<User> getUser() throws Exception {
		
		return userMapper.getUser();
	}
	
	
	@Override
	public List<User> getUserId(User u){
		
		return userMapper.getUserId(u);
		
		
	}
	
	
	@Override
	public List<User> getUserPage(User u){
		
		
		return userMapper.getUserPage(u);
		
		
	}

	@Override
	public void addUser(User u) throws Exception {
		
		userMapper.addUser(u);
		
	}

	@Override
	public void deleteUser(int id) throws Exception {
		
		userMapper.deleteUser(id);
		
	}

	@Override
	public void updateUser(User u) {
		
		userMapper.updateUser(u);
		
	}
	
	
}
