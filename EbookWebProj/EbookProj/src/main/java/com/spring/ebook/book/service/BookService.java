package com.spring.ebook.book.service;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.spring.ebook.model.book.dao.BookDao;
import com.spring.ebook.model.book.vo.BookVO;
<<<<<<< HEAD
import com.spring.ebook.util.vo.SearchVO;
=======
import com.spring.ebook.model.util.vo.LikeVO;
>>>>>>> 2a43a3c3160204ea4712971f356ca5085464fa62

@Service("bookService")
public class BookService {

	@Resource(name="bookDao")
	private BookDao dao ;
	
	public ArrayList<BookVO> list() {
		System.out.println("Service booklist");
		return dao.listRow() ;
	}
	
<<<<<<< HEAD
	public ArrayList<BookVO> search(SearchVO search) {
=======
	public ArrayList<LikeVO> likeList(){
		System.out.println("Service Likelist");
		return dao.likeList();
	}
	
/*	public ArrayList<BookVO> search(SearchVO search) {
>>>>>>> 2a43a3c3160204ea4712971f356ca5085464fa62
		System.out.println("Service search");
		return dao.searchRow(search);
	}
}
