package com.spring.ebook.book.ctrl;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.ebook.book.service.BookService;
import com.spring.ebook.model.book.vo.BookVO;
import com.spring.ebook.model.recode.vo.RecodeVO;
import com.spring.ebook.model.userbook.vo.UserBookVO;
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
	
	@RequestMapping("/likeupdate.do")
	public String update(BookVO book) {
		System.out.println("Ctrl update");
		int flag = serv.update(book);
		return "redirect:/indexpage.do";
	}
	
	@RequestMapping("/delbook.do")
	public String delete(BookVO book) {
		System.out.println("delbook ctrl");
		RecodeVO rec = new RecodeVO();
		UserBookVO userb = new UserBookVO();
		
		rec.setBooknum(book.getBooknum());
		userb.setBooknum(book.getBooknum());
		
		serv.delbook(rec);
		serv.delbook(userb);
		serv.delbook(book);
		
		return "redirect:/addbookform.do";
	}
}
