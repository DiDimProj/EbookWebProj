package com.spring.ebook.model.board.dao;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ebook.model.util.vo.PutlistVO;
import com.spring.ebook.model.util.vo.ReadlistVO;

@Repository("boardDao")
public class BoardDao {
	
	@Resource(name="sqlSession")
	private SqlSession session;

}
