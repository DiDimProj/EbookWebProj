package com.spring.ebook.userbook.service;

import javax.annotation.Resource;

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

	public int addPutbook(UserBookVO addputbook) {
		System.out.println("Service addputbook");
		return dao.addPutbookRow(addputbook);
	}
	
/*	public int checkPutbook(UserBookVO checkputbook) {
		System.out.println("Service checkputbook");
		return dao.checkPutbookRow(checkputbook);
	}*/
	

}
