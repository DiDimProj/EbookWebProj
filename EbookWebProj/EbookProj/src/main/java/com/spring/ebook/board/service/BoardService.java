package com.spring.ebook.board.service;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.spring.ebook.model.board.dao.BoardDao;
import com.spring.ebook.model.util.vo.PutlistVO;
import com.spring.ebook.model.util.vo.ReadlistVO;

@Service("boardService")
public class BoardService {
	
	@Resource(name="boardDao")
	private BoardDao dao;
	

	
}
