package com.spring.ebook.model.user.dao;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ebook.model.user.vo.UserVO;
import com.spring.ebook.model.util.vo.PutlistVO;
import com.spring.ebook.model.util.vo.ReadlistVO;
import com.spring.ebook.model.util.vo.RecommVO;

@Repository("userDao")
public class UserDao {
	
	@Resource(name="sqlSession")
	private SqlSession session;
	
	public UserVO loginRow(UserVO user) {
		System.out.println("Dao loginRow");

		return session.selectOne("com.spring.acorn.mapper.user.login", user);
	}
	
	public ArrayList<PutlistVO>putlistRow(UserVO user) {
		System.out.println("Dao putlistRow");
		return (ArrayList)session.selectList("com.spring.acorn.mapper.user.putlist", user);
	}
	
	public ArrayList<ReadlistVO>readlistRow(UserVO user) {
		System.out.println("Dao readlistRow");
		return (ArrayList)session.selectList("com.spring.acorn.mapper.user.readlist", user);
	}
	
	public UserVO withdrawalRow(UserVO user) {
		System.out.println("Dao withdrawalRow");
		return session.selectOne("com.spring.acorn.mapper.user.withdrawal",user);
	}

	public UserVO insertRow(UserVO user) {
		System.out.println("Dao insertRow");
		System.out.println(user.getUserid());
		System.out.println(user.getPassword());
		System.out.println(user.getName());
		System.out.println(user.getPhone());
		return session.selectOne("com.spring.acorn.mapper.user.insert",user);
	}
	public ArrayList<RecommVO> recomlist(UserVO user){
		return (ArrayList)session.selectList("com.spring.acorn.mapper.user.recom", user);
	}
	
	}
