package com.spring.ebook.user.service;

import java.util.ArrayList;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.spring.ebook.model.user.dao.UserDao;
import com.spring.ebook.model.user.vo.UserVO;
import com.spring.ebook.model.util.vo.PutlistVO;
import com.spring.ebook.model.util.vo.ReadlistVO;
import com.spring.ebook.model.util.vo.RecommVO;

@Service("userService")
public class UserService {
	
	@Resource(name="userDao")
	private UserDao dao;
	
	public UserVO login(UserVO user) {
		System.out.println("user Service");
		return dao.loginRow(user);
	}
	
	public ArrayList<PutlistVO> putlist(UserVO user) {
		System.out.println("Service putlist");
		return dao.putlistRow(user);
	}
	
	public ArrayList<ReadlistVO> readlist(UserVO user) {
		System.out.println("Service readlist");
		return dao.readlistRow(user);
	}
	
	public UserVO withdrawal(UserVO user) {
		System.out.println("Service withdrawal");
		return dao.withdrawalRow(user);
	}
	
<<<<<<< HEAD
	public UserVO insert(UserVO user) {
		System.out.println("Service insert");
		return dao.insertRow(user);
	}
=======
	public ArrayList<RecommVO> recomlist(UserVO user){
		System.out.println("recomlist");
		return dao.recomlist(user);
	}
	
>>>>>>> db00d65b88df5dcfbf5d2ab34ae3321ae8ff1546
}
