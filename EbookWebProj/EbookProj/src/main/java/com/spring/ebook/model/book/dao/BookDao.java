package com.spring.ebook.model.book.dao;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ebook.model.book.vo.BookVO;
import com.spring.ebook.model.util.vo.LikeVO;
import com.spring.ebook.util.vo.SearchVO;

@Repository("bookDao")
public class BookDao {
	
	@Resource(name="sqlSession")
	private SqlSession session ;

	public ArrayList<BookVO> listRow() {
		System.out.println("Dao BooklistRow");
		return (ArrayList)session.selectList("com.spring.acorn.mapper.book.list");
	} 
	
	public ArrayList<LikeVO> likeList(){
		System.out.println("DAO LIKELIST");
		return (ArrayList)session.selectList("com.spring.acorn.mapper.book.liklist");
	}
	
	public ArrayList<BookVO> searchRow(SearchVO search) {
		System.out.println("Dao searchRow");
		return (ArrayList)
				session.selectList("com.spring.acorn.mapper.book.search", search);
	} 
	
	public BookVO addbook(BookVO book) {
		return session.selectOne("com.spring.acorn.mapper.book.addbook", book);
	}
	
	public BookVO getBookRow(BookVO book) {
		System.out.println("Dao getBookRow");
		return session.selectOne("com.spring.acorn.mapper.board.getBook",book);
	}
	
	public int updateRow(BookVO book) {
		System.out.println("Dao updateRow");
		return session.update("com.spring.acorn.mapper.board.likeupdate", book);
	}
}
