package com.zjnu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zjnu.entity.User;
import com.zjnu.mapper.UserMapper;
import com.zjnu.service.UserService;



@Service//类注解
@Transactional//事务
public class UserServiceImpl implements UserService {

	// 注入UserMapper
	@Autowired
	private UserMapper mapper;

	
	public void save(User user) {
		mapper.save(user);	
	}
	
	public void update(User user) {
		mapper.update(user);	
	}
	
	public User findById(Integer id) {
		return mapper.findById(id);
	}
	
	public void deleteById(Integer id) {
		mapper.deleteById(id);
	}

	public List<User> findAll() {
		return mapper.findAll();
	}

	public User login(User user) {
		return mapper.login(user);
	}

}
