package com.spring.ebook.model.book.dao;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ebook.model.book.vo.BookVO;
import com.spring.ebook.model.recode.vo.RecodeVO;
import com.spring.ebook.model.userbook.vo.UserBookVO;
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
	
	//삭제를 꼭 이딴식으로 해야하는걸까 ---------------------------------------------
	public BookVO delbook(BookVO book) {
		return session.selectOne("com.spring.acorn.mapper.book.delbook", book);
	}
	
	public RecodeVO delbook(RecodeVO recode) {
		return session.selectOne("com.spring.acorn.mapper.book.delbookrecode", recode);
	}
	
	public UserBookVO delbook(UserBookVO userbook) {
		return session.selectOne("com.spring.acorn.mapper.book.deluserbook", userbook);
	}
	//---------------------------------------------------------------------
	
	public int updateRow(BookVO book) {
		System.out.println("Dao updateRow");
		return session.update("com.spring.acorn.mapper.book.likeupdate", book);
	}
}
