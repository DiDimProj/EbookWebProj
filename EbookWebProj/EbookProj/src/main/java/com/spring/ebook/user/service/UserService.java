package com.spring.ebook.user.service;

import java.util.ArrayList;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.spring.ebook.model.user.dao.UserDao;
import com.spring.ebook.model.user.vo.UserVO;
import com.spring.ebook.model.util.vo.PutlistVO;
import com.spring.ebook.model.util.vo.ReadlistVO;

@Service("userService")
public class UserService {
	
	@Resource(name="userDao")
	private UserDao dao;
	
	public UserVO login(UserVO user) {
		System.out.println("user Service");
		return dao.loginRow(user);
	}
	
	public ArrayList<PutlistVO> putlist() {
		System.out.println("Service putlist");
		return dao.putlistRow();
	}
	
	public ArrayList<ReadlistVO> readlist() {
		System.out.println("Service readlist");
		return dao.readlistRow();
	}
	
}
