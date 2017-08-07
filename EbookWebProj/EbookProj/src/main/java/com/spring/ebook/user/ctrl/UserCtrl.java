package com.spring.ebook.user.ctrl;

import java.util.ArrayList;
import java.util.Locale;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.spring.ebook.board.ctrl.BoardCtrl;
import com.spring.ebook.model.user.vo.UserVO;
import com.spring.ebook.model.util.vo.PutlistVO;
import com.spring.ebook.model.util.vo.ReadlistVO;
import com.spring.ebook.model.util.vo.RecommVO;
import com.spring.ebook.user.service.UserService;

@Controller
@SessionAttributes("loginUser")
public class UserCtrl {
	
	@Resource(name="userService")
	private UserService serv;
	
	@RequestMapping("/mypage.do")
	public String myPage(Locale locale, Model model, UserVO user) {
		System.out.println("Ctrl mypage");
		
		System.out.println("ctrl putlist");
		ArrayList<PutlistVO> putlist = serv.putlist(user);
		model.addAttribute("pustlists", putlist);
		
		System.out.println("ctrl readlist");
		ArrayList<ReadlistVO> readlist = serv.readlist(user);
		model.addAttribute("readtlists", readlist);
		
		System.out.println("ctrl oneuser");
		UserVO result = serv.oneUser(user);
		model.addAttribute("loginUser",result);
		
		
		return "/mypage";
	}
	
	@RequestMapping("/update.do")
	public String update(UserVO user) {
		System.out.println("Ctrl update");
		int flag = serv.update(user);
		
		
		return "redirect:/main.do";
	}
	
	@RequestMapping("/withdrawal.do")
	public String withdrawal(UserVO user) {
		System.out.println("Ctrl withdrawal");
		int flag = serv.withdrawal(user);
		
		return "redirect:/main.do";
	}
	
	
	@RequestMapping(value = "/join.do", method = RequestMethod.GET)
	public String join(Locale locale, Model model) {
		System.out.println("Ctrl join");
		return "join";
	}
	
	@RequestMapping("/login.do")
	public String login(UserVO user, Model model) {
		System.out.println("Ctrl login");
		UserVO result = serv.login(user);
		String path = null;
		if (result != null) {
			ArrayList<RecommVO> recresult = serv.recomlist(user);
			model.addAttribute("loginUser",result);
			model.addAttribute("recomlist", recresult);
			path = "home";
		} else
			path = "join";
		return path;
	}
	
	@RequestMapping("/logout.do")
	public String logout(SessionStatus status) {
		System.out.println("ctrl logout");
		status.setComplete();
		return "redirect:/main.do";
	}
	
	@RequestMapping("insert.do")
	public String insert(UserVO user) {
		System.out.println("Ctrl insert");
		UserVO insert = serv.insert(user);
		return "redirect:/main.do";
	}
	
}
