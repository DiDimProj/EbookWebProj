package com.spring.ebook.user.service;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.spring.ebook.model.book.vo.BookVO;
import com.spring.ebook.model.recode.vo.RecodeVO;
import com.spring.ebook.model.user.dao.UserDao;
import com.spring.ebook.model.user.vo.UserVO;
import com.spring.ebook.model.userbook.vo.UserBookVO;
import com.spring.ebook.model.util.vo.PutlistVO;
import com.spring.ebook.model.util.vo.ReadchartVO;
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
	
	public UserVO oneUser(UserVO user) {
		System.out.println("user oneUser");
		return dao.oneUserRow(user);
	}
	
	public ArrayList<PutlistVO> putlist(UserVO user) {
		System.out.println("Service putlist");
		return dao.putlistRow(user);
	}
	
	public ArrayList<ReadlistVO> readlist(UserVO user) {
		System.out.println("Service readlist");
		return dao.readlistRow(user);
	}
	
	public ArrayList<ReadchartVO> readchart(UserVO user) {
		System.out.println("Service readchart");
		return dao.readchartRow(user);
	}
	
	public int update(UserVO user) {
		System.out.println("Service update");
		return dao.updateRow(user);
	}
	
	public int withdrawal(UserVO user) {
		System.out.println("Service withdrawal");
		return dao.withdrawalRow(user);
	}
	

	public UserVO insert(UserVO user) {
		System.out.println("Service insert");
		return dao.insertRow(user);
	}

	public ArrayList<RecommVO> recomlist(UserVO user){
		System.out.println("recomlist");
		return dao.recomlist(user);
	}
	
	public UserVO deluser(UserVO user) {
		return dao.deluser(user);
	}

	public RecodeVO deluser(RecodeVO rec) {
		return dao.deluser(rec);
	}
	
	public UserBookVO deluser(UserBookVO userb) {
		return dao.deluser(userb);
	}
	
	public ArrayList<UserVO> list() {
		System.out.println("Service booklist");
		return dao.listRow() ;
	}
}
