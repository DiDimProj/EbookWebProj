package com.spring.ebook.board.ctrl;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.ebook.board.service.BoardService;
import com.spring.ebook.model.board.vo.PutlistVO;
import com.spring.ebook.model.user.vo.UserVO;

@Controller
public class BoardCtrl {
	
	@Resource(name="boardService")
	private BoardService service;
	
	@RequestMapping("/putlist.do")
	public String putlist(Model model) {
		System.out.println("ctrl putlist");
		ArrayList<PutlistVO> putlist = service.putlist();
		model.addAttribute("pustlists", putlist);
		return "/mypage";
	}
}
