package com.spring.ebook.model.book.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.ebook.model.book.vo.BookVO;

@Repository("bookDao")
public class BookDao {

	@Autowired
	private SqlSession sqlSession ;
	public List<BookVO> listRow(){
	System.out.println("Dao booklistRow");
	return sqlSession.selectList("com.spring.book.search"); 
	}
}
