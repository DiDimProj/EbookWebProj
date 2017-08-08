package com.spring.ebook.model.book.dao;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ebook.model.book.vo.BookVO;
<<<<<<< HEAD
import com.spring.ebook.util.vo.SearchVO;
import com.spring.ebook.model.util.vo.LikeVO;
=======
import com.spring.ebook.model.util.vo.LikeVO;
import com.spring.ebook.util.vo.SearchVO;
>>>>>>> f8a3325d0735cf70e09363c5a5ab846d36d04ba9

@Repository("bookDao")
public class BookDao {
	
	@Resource(name="sqlSession")
	private SqlSession session ;

	public ArrayList<BookVO> listRow() {
		System.out.println("Dao BooklistRow");
		return (ArrayList)session.selectList("com.spring.acorn.mapper.book.list");
	} 
<<<<<<< HEAD

=======
>>>>>>> f8a3325d0735cf70e09363c5a5ab846d36d04ba9
	
	public ArrayList<LikeVO> likeList(){
		System.out.println("DAO LIKELIST");
		return (ArrayList)session.selectList("com.spring.acorn.mapper.book.liklist");
	}
	
	public ArrayList<BookVO> searchRow(SearchVO search) {
		System.out.println("Dao searchRow");
		return (ArrayList)
				session.selectList("com.spring.acorn.mapper.book.search", search);
	} 
}
<<<<<<< HEAD

=======
>>>>>>> f8a3325d0735cf70e09363c5a5ab846d36d04ba9
