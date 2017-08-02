package com.spring.ebook.book.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.spring.ebook.model.book.dao.BookDao;

@Service("bookService")
public class BookService {

	@Resource(name="bookDao")
	private BookDao dao ;
}
