package com.zjnu.mapper;

import java.util.List;

import com.zjnu.entity.User;

public interface UserMapper {
	User login(User user);
	
	void save(User user);
	
	void deleteById(Integer id);
	
	void update(User user);
	
	User findById(Integer id);
	
	List<User> findAll();

}
