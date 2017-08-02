package com.spring.ebook.user.ctrl;

import java.util.Locale;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ebook.user.service.UserService;

@Controller
public class UserCtrl {
	
	@Resource(name="userService")
	private UserService serv;
	
	@RequestMapping(value = "mypage.do", method = RequestMethod.GET)
	public String myPage(Locale locale, Model model) {
		System.out.println("Ctrl User");
		return "mypage";
	}
	
	@RequestMapping(value = "join.do", method = RequestMethod.GET)
	public String join(Locale locale, Model model) {
		System.out.println("Ctrl User");
		return "join";
	}
}
