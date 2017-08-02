package com.spring.ebook.model.book.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("bookDao")
public class BookDao {

	@Autowired
	private SqlSession sqlSession ;
	
}
