package com.spring.ebook.model.book.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.ebook.model.book.vo.BookVO;

@Repository("bookDao")
public class BookDao {

	@Autowired
	private SqlSession sqlSession ;
	
/*	public BookVO indexRow(BookVO title) {
		System.out.println("Dao indexpage");
		return sqlSession.selectOne("com.spring.book.index", title);
	}*/
	
}
