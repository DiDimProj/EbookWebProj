package com.spring.ebook.recode.ctrl;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.ebook.model.recode.vo.RecodeVO;
import com.spring.ebook.model.userbook.vo.UserBookVO;
import com.spring.ebook.recode.service.RecodeService;


@Controller
public class RecodeCtrl {
	@Resource(name="recodeService")
	private RecodeService service;
	
	@RequestMapping("/delReadbook.do")
	public String delReadbook(RecodeVO delreadbook) {
		System.out.println("Ctrl delreadbook");
		String userid = delreadbook.getUserid();
		int flag = service.delReadbook(delreadbook);
		return "redirect:/mypage.do?userid="+userid;
	}
	
	@RequestMapping("/addReadbook.do")
	@ResponseBody
	public void addReadbook(RecodeVO addreadbook, RecodeVO delreadbook) {
		System.out.println("Ctrl addreadbook");
		String userid = addreadbook.getUserid();
		int check = service.delReadbook(delreadbook);
		int flag = service.addReadbook(addreadbook);
		//return "redirect:/indexpage.do?userid="+userid;
	}

}
