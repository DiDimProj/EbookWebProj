package com.spring.ebook.userbook.service;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.spring.ebook.model.userbook.dao.UserBookDao;
import com.spring.ebook.model.userbook.vo.UserBookVO;

@Service("userbookService")
public class UserBookService {
	
	@Resource(name="userbookDao")
	private UserBookDao dao ;
	
	public int delPutbook(UserBookVO delputbook) {
		System.out.println("Service delputbook");
		return dao.delPutbookRow(delputbook);
	}
	

}
