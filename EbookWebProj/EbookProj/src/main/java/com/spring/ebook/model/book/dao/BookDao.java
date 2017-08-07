package com.spring.ebook.model.book.dao;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ebook.model.book.vo.BookVO;
import com.spring.ebook.model.util.vo.RecommVO;

@Repository("bookDao")
public class BookDao {
	
	@Resource(name="sqlSession")
	private SqlSession session ;

	public ArrayList<BookVO> listRow() {
		System.out.println("Dao BooklistRow");
		return (ArrayList)session.selectList("com.spring.acorn.mapper.book.list");
	} 
<<<<<<< HEAD
	
/*	public ArrayList<BookVO> searchRow(SearchVO search) {
		System.out.println("Dao searchRow");
		return (ArrayList)
				session.selectList("com.spring.acorn.mapper.book.search", search);
	} // list 타입으로 casting 필요
*/}
=======

}
>>>>>>> a07d605820f813a69923f65fa746bbb3d8e1db08
