package com.spring.ebook.model.recode.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("recodeDao")
public class RecodeDao {
	
	@Autowired
	private SqlSession sqlSession;
	
}
