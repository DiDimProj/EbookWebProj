package com.spring.ebook.model.genre.dao;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ebook.model.genre.vo.GenreVO;

@Repository("genreDao")
public class GenreDao {
	
	@Resource(name="sqlSession")
	private SqlSession session;
	
	public ArrayList<GenreVO> genrechartRow() {
		System.out.println("Dao genrechartRow");
		return (ArrayList)session.selectList("com.spring.acorn.mapper.genre.genrechart");
	}

}
