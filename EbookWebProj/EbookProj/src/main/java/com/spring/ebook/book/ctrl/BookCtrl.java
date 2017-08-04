package com.spring.ebook.book.ctrl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.ebook.book.service.BookService;
import com.spring.ebook.model.book.vo.BookVO;

@Controller
public class BookCtrl {

	@Resource(name="bookService")
	private BookService serv ;
	
	@RequestMapping("/indexpage.do")
	public String list(Model model) {
		System.out.println("Ctrl index");
		List<BookVO> list = serv.list();
		model.addAttribute("lists", list) ;
		return "indexpage";
	}

}
