package com.spring.ebook.model.board.dao;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository("boardDao")
public class BoardDao {
	
	@Resource(name="sqlSession")
	private SqlSession session;
	
	
}
