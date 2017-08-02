package com.spring.ebook.book.ctrl;

import java.util.Locale;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ebook.book.service.BookService;

@Controller
public class BookCtrl {

	@Resource(name="bookService")
	private BookService serv ;
	
	@RequestMapping(value = "indexpage.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		System.out.println("Ctrl index");
		return "indexpage";
	}
}
