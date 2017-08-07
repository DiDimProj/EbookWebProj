package com.spring.ebook.board.ctrl;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.ebook.board.service.BoardService;
import com.spring.ebook.model.user.vo.UserVO;
import com.spring.ebook.model.util.vo.PutlistVO;
import com.spring.ebook.model.util.vo.ReadlistVO;

@Controller
public class BoardCtrl {
	
	@Resource(name="boardService")
	private BoardService service;
	

}
