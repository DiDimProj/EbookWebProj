package com.spring.ebook.book.ctrl;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.ebook.book.service.BookService;

@Controller
public class BookCtrl {

	@Resource(name="bookService")
	private BookService serv ;
	
	@RequestMapping("/indexpage.do")
	public String indexpage() {
		System.out.println("Ctrl indexpage");
		return "indexpage";
	}
}
