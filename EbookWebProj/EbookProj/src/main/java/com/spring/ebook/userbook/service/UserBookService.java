package com.spring.ebook.userbook.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.spring.ebook.model.userbook.dao.UserBookDao;

@Repository
public class UserBookService {
	
	@Resource(name="userbookdao")
	private UserBookDao dao ;

}
