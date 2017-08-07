package com.spring.ebook.userbook.ctrl;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.ebook.model.userbook.vo.UserBookVO;
import com.spring.ebook.userbook.service.UserBookService;

@Controller
public class UserBookCtrl {
	
	@Resource(name="userbookService")
	private UserBookService service ;
	
//	@RequestMapping("/mypage.do")
//	public String putbook(Model model) {
//		System.out.println("Ctrl putbook");
//		ArrayList<UserBookVO> putbooklist = service.putbooklist();
//		model.addAttribute("putbooklist", putbooklist);
//		return "/mypage";
//	}

}
