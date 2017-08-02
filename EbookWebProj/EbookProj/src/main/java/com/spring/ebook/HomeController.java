package com.spring.ebook;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@RequestMapping(value = "main.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		System.out.println("Ctrl home");
<<<<<<< HEAD
<<<<<<< HEAD
		return "join";
=======
		return "indexpage";
>>>>>>> 74f71f0651d0de77e14e8049f26a2f6ad37f6bd9
=======
		return "indexpage";
>>>>>>> 74f71f0651d0de77e14e8049f26a2f6ad37f6bd9
	}
	
}
