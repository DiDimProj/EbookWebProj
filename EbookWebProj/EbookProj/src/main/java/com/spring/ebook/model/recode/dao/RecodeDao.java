package com.spring.ebook.model.recode.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.ebook.model.recode.vo.RecodeVO;
import com.spring.ebook.model.userbook.vo.UserBookVO;

@Repository("recodeDao")
public class RecodeDao {
	
	@Autowired
	private SqlSession session;
	
	public int delReadbookRow(RecodeVO delreadbook) {
		System.out.println("Dao delReadbookRow");
		return session.delete("com.spring.acorn.mapper.recode.delreadbook", delreadbook);
	}
	
	public int addReadbookRow(RecodeVO addreadbook) {
		System.out.println("Dao addReadbookRow");
		return session.insert("com.spring.acorn.mapper.recode.addreadbook", addreadbook);
	}
	
}
