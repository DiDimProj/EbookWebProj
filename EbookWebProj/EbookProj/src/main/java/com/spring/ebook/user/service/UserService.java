package com.spring.ebook.user.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.spring.ebook.model.user.dao.UserDao;

@Service("userService")
public class UserService {
	
	@Resource(name="userDao")
	private UserDao dao;
}
