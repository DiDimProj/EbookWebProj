package com.spring.ebook.recode.ctrl;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.ebook.model.userbook.vo.UserBookVO;
import com.spring.ebook.recode.service.RecodeService;


@Controller
public class RecodeCtrl {
	@Resource(name="recodeService")
	private RecodeService service;
	
	@RequestMapping("/delReadbook.do")
	public String delReadbook(UserBookVO delreadbook) {
		System.out.println("Ctrl delreadbook");
		String userid = delreadbook.getUserid();
		int flag = service.delReadbook(delreadbook);
		return "redirect:/mypage.do?userid="+userid;
	}

}
