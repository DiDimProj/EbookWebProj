package com.spring.ebook.board.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.spring.ebook.model.board.dao.BoardDao;

@Service("boardService")
public class BoardService {
	
	@Resource(name="boardDao")
	private BoardDao dao;
	
	
}
