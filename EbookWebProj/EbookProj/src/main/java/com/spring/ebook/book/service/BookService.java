package com.spring.ebook.book.service;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.spring.ebook.model.book.dao.BookDao;
import com.spring.ebook.model.book.vo.BookVO;
import com.spring.ebook.model.util.vo.RecommVO;

@Service("bookService")
public class BookService {

	@Resource(name="bookDao")
	private BookDao dao ;
	
	public ArrayList<BookVO> list() {
		System.out.println("Service booklist");
		return dao.listRow() ;
	}
	
	public ArrayList<BookVO> likeList(){
		System.out.println("Service Likelist");
		return dao.likeList();
	}
	
/*	public ArrayList<BookVO> search(SearchVO search) {
		System.out.println("Service search");
		return dao.searchRow(search);
	}*/
}
