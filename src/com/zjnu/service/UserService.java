package com.zjnu.service;

import java.util.List;

import com.zjnu.entity.User;

public interface UserService {
	
	User login(User user);
	
	void save(User user);
	
	void deleteById(Integer id);
	
	void update(User user);
	
	User findById(Integer id);
	
	List<User> findAll();
}
