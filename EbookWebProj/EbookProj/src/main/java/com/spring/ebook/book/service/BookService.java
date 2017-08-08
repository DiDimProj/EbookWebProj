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
	
<<<<<<< HEAD
=======
	public ArrayList<BookVO> search(SearchVO search) {
		return dao.searchRow(search);
	}
	
>>>>>>> f8a3325d0735cf70e09363c5a5ab846d36d04ba9
	public ArrayList<LikeVO> likeList(){
		System.out.println("Service Likelist");
		return dao.likeList();
	}
	
<<<<<<< HEAD
	public ArrayList<BookVO> search(SearchVO search) {
		System.out.println("Service search");
		return dao.searchRow(search);
	}
=======
>>>>>>> f8a3325d0735cf70e09363c5a5ab846d36d04ba9
}
