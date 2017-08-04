package com.spring.ebook.model.userbook.dao;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.ebook.model.userbook.vo.UserBookVO;


@Repository("userbookDao")
public class UserBookDao {
	
	@Resource(name="sqlSession")
	private SqlSession session ;
	
	public ArrayList<UserBookVO> putbooklistRow() {
		System.out.println("Dao userbooklistrow");
		return (ArrayList)session.selectList("com.spring.acorn.mapper.userbook.putbooklist");
	}

}
