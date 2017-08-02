package com.spring.ebook.book.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.spring.ebook.model.book.dao.BookDao;
import com.spring.ebook.model.book.vo.BookVO;

@Service("bookService")
public class BookService {

	@Resource(name="bookDao")
	private BookDao dao ;
	
/*	public BookVO index(BookVO title) {
		System.out.println("Booktitle check");
		return bookDao.indexRow(title);
	}*/
}
