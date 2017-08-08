package com.spring.ebook.userbook.ctrl;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.ebook.model.userbook.vo.UserBookVO;
import com.spring.ebook.model.util.vo.PutlistVO;
import com.spring.ebook.userbook.service.UserBookService;

@Controller
public class UserBookCtrl {
	
	@Resource(name="userbookService")
	private UserBookService service ;
	
	@RequestMapping("/delPutbook.do")
	public String delPutbook(UserBookVO delputbook) {
		System.out.println("Ctrl delputbook");
		String userid = delputbook.getUserid();
		int flag = service.delPutbook(delputbook);
		return "redirect:/mypage.do?userid="+userid;
	}

}
