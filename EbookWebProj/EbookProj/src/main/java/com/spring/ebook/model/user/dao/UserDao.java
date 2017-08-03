package com.spring.ebook.model.user.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.ebook.model.user.vo.UserVO;

@Repository("userDao")
public class UserDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public UserVO loginRow(UserVO user) {
		System.out.println("Dao loginRow");

		return sqlSession.selectOne("com.spring.acorn.mapper.user.login", user);
	}
}
