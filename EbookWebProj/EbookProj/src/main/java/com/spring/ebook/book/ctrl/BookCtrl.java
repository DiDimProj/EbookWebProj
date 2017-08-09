package com.spring.ebook.book.ctrl;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.ebook.book.service.BookService;
import com.spring.ebook.model.book.vo.BookVO;
import com.spring.ebook.util.vo.SearchVO;

@Controller
@RequestMapping
public class BookCtrl {

	@Resource(name="bookService")
	private BookService serv ;
	
	@RequestMapping("/indexpage.do")
	public String list(Model model) {
		System.out.println("Ctrl index");
		ArrayList<BookVO> list = serv.list();
		model.addAttribute("lists", list) ;
		return "/indexpage";
	}

	@RequestMapping("/search.do")
	@ResponseBody
	public ArrayList<BookVO> search(SearchVO search) { 
		System.out.println("Ctrl search");
		System.out.println("type : "+search.getSearchType());
		System.out.println("keyword :"+search.getSearchKeyword());
		ArrayList<BookVO> list = serv.search(search);
		return list;
	} 
	
	@RequestMapping("/addbook.do")
	public String addbook(BookVO book) {
		BookVO add = serv.addbook(book);
		return "redirect:/addbookform.do";
	}
	
	@RequestMapping("/addbookform.do")
	public String addbookForm(Model model) {
		ArrayList<BookVO> list = serv.list();
		model.addAttribute("lists", list) ;
		return "addbookform";
	}
	
	@RequestMapping("/bookModify.do")
	public String bookModify(BookVO book, Model model) {
		System.out.println("Ctrl bookModify");
		BookVO result = serv.getModify(book);
		model.addAttribute("BookVO", result);
		return "/modify";
	}
	
	@RequestMapping("/likeupdate.do")
	public String update(BookVO book) {
		System.out.println("Ctrl update");
		int flag = serv.update(book);
		return "redirect:/book/indexpage.do";
	}
	
}
