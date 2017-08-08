package com.spring.ebook;

import java.util.ArrayList;
import java.util.Locale;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ebook.model.user.vo.UserVO;
import com.spring.ebook.model.util.vo.RecommVO;
import com.spring.ebook.user.service.UserService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Resource(name="userService")
	private UserService serv;
	
	@RequestMapping(value = "main.do", method = RequestMethod.GET)
	public String home(UserVO user, Locale locale, Model model) {
		System.out.println("Ctrl home");
		if(user.getUserid() != null) {

			ArrayList<RecommVO> recresult = serv.recomlist(user);
			model.addAttribute("recomlist", recresult);
			System.out.println("userid 얻음");
			
		}
		return "home";
	}
	
}
