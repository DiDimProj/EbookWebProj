package com.spring.ebook.model.user.dao;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ebook.model.user.vo.UserVO;

@Repository("userDao")
public class UserDao {
	
	@Resource(name="sqlSession")
	private SqlSession session;
	
	public UserVO loginRow(UserVO user) {
		System.out.println("Dao loginRow");

		return session.selectOne("com.spring.acorn.mapper.user.login", user);
	}
}
