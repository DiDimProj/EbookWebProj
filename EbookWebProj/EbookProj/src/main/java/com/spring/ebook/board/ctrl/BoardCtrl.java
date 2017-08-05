package com.spring.ebook.board.ctrl;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import com.spring.ebook.board.service.BoardService;

@Controller
public class BoardCtrl {
	
	@Resource(name="boardService")
	private BoardService service;
}
