package com.spring.ebook.user.ctrl;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import com.spring.ebook.user.service.UserService;

@Controller
public class UserCtrl {
	
	@Resource(name="userService")
	private UserService serv;
}
