package com.spring.ebook.model.userbook.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository("userbookDao")
public class UserBookDao {
	
	@Autowired
	private SqlSession sqlSession ; 

}
