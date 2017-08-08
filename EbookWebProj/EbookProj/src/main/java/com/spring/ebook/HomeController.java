package com.spring.ebook;

import java.util.ArrayList;
import java.util.Locale;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ebook.book.service.BookService;
import com.spring.ebook.model.util.vo.LikeVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Resource(name="bookService")
	private BookService Bserv ;
	
	@RequestMapping(value = "main.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		System.out.println("Ctrl home");
		
		ArrayList<LikeVO> likeresult = Bserv.likeList();
		model.addAttribute("likelist", likeresult);
		
		return "home";
	}
	
}
