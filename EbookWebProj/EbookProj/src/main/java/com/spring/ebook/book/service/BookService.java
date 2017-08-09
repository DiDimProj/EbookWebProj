package com.spring.ebook.book.service;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.spring.ebook.model.book.dao.BookDao;
import com.spring.ebook.model.book.vo.BookVO;
import com.spring.ebook.util.vo.SearchVO;
import com.spring.ebook.model.util.vo.LikeVO;

@Service("bookService")
public class BookService {

	@Resource(name="bookDao")
	private BookDao dao ;
	
	public ArrayList<BookVO> list() {
		System.out.println("Service booklist");
		return dao.listRow() ;
	}

	public ArrayList<LikeVO> likeList(){
		System.out.println("Service Likelist");
		return dao.likeList();
	}
	
	public ArrayList<BookVO> search(SearchVO search) {
		System.out.println("Service search");
		return dao.searchRow(search);
	}
	
	public BookVO addbook(BookVO book) {
		return dao.addbook(book);
	}
	
	public int update(BookVO book) {
		System.out.println("Service update");
		return dao.updateRow(book);
	}
}
