package com.spring.ebook.userbook.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.spring.ebook.model.userbook.dao.UserBookDao;

@Service("userbookService")
public class UserBookService {
	
	@Resource(name="userbookdao")
	private UserBookDao dao ;

}
