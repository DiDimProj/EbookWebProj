package com.spring.ebook.user.service;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.spring.ebook.model.user.dao.UserDao;
import com.spring.ebook.model.user.vo.UserVO;

@Service("userService")
public class UserService {
	
	@Resource(name="userDao")
	private UserDao dao;
	
	public UserVO login(UserVO user) {
		System.out.println("user Service");
		return dao.loginRow(user);
	}
}
