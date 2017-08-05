package com.spring.ebook.board.service;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.spring.ebook.model.board.dao.BoardDao;
import com.spring.ebook.model.board.vo.PutlistVO;

@Service("boardService")
public class BoardService {
	
	@Resource(name="boardDao")
	private BoardDao dao;
	
	public ArrayList<PutlistVO> putlist() {
		System.out.println("Service putlist");
		return dao.putlistRow();
	}
	
}
