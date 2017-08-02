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
<<<<<<< HEAD
	
	@RequestMapping(value = "main.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		System.out.println("Ctrl home");
		return "mypage";
	}
	
=======
   
   @RequestMapping(value = "main.do", method = RequestMethod.GET)
   public String home(Locale locale, Model model) {
      System.out.println("Ctrl home");
      return "join";
   }
   
   
   
>>>>>>> 17f028dd8c2d28e6f4050ce2e2fcfa393cf597d3
}
