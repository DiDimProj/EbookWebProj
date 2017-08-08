package com.spring.ebook.model.book.dao;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ebook.model.book.vo.BookVO;
<<<<<<< HEAD
import com.spring.ebook.util.vo.SearchVO;
=======
import com.spring.ebook.model.util.vo.LikeVO;
>>>>>>> 2a43a3c3160204ea4712971f356ca5085464fa62

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
	
	public ArrayList<LikeVO> likeList(){
		System.out.println("DAO LIKELIST");
		return (ArrayList)session.selectList("com.spring.acorn.mapper.book.liklist");
	}
>>>>>>> 2a43a3c3160204ea4712971f356ca5085464fa62
	
	public ArrayList<BookVO> searchRow(SearchVO search) {
		System.out.println("Dao searchRow");
		return (ArrayList)
				session.selectList("com.spring.acorn.mapper.book.search", search);
<<<<<<< HEAD
	} 
}
=======
	} // list 타입으로 casting 필요
*/}
>>>>>>> 2a43a3c3160204ea4712971f356ca5085464fa62

