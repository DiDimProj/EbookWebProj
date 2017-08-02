package com.spring.ebook.book.ctrl;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import com.spring.ebook.book.service.BookService;

@Controller
public class BookCtrl {

	@Resource(name="bookService")
	private BookService serv ;
}
