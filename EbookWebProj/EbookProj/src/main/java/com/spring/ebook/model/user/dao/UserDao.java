package com.spring.ebook.model.user.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("userDao")
public class UserDao {
	
	@Autowired
	private SqlSession sqlSession;
}
