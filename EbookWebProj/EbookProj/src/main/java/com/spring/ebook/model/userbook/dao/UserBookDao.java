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
	
	public int delPutbookRow(UserBookVO delputbook) {
		System.out.println("Dao delPutbookRow");
		return session.delete("com.spring.acorn.mapper.userbook.delputbook", delputbook);
	}
}
