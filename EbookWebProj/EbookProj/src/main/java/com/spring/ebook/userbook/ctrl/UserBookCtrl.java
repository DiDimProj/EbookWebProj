package com.spring.ebook.userbook.ctrl;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import com.spring.ebook.userbook.service.UserBookService;

@Controller
public class UserBookCtrl {
	
	@Resource(name="userbookService")
	private UserBookService service ;

}
