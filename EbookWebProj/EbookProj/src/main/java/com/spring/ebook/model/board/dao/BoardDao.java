package com.spring.ebook.model.board.dao;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ebook.model.board.vo.PutlistVO;

@Repository("boardDao")
public class BoardDao {
	
	@Resource(name="sqlSession")
	private SqlSession session;
	
	public ArrayList<PutlistVO>putlistRow() {
		System.out.println("Dao putlistRow");
		return (ArrayList)session.selectList("com.spring.acorn.mapper.board.putlist");
	}
}
