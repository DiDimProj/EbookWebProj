package com.spring.ebook.genre.ctrl;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.ebook.genre.service.GenreService;
import com.spring.ebook.model.genre.vo.GenreVO;

@Controller
public class GenreCtrl {
	
	@Resource(name="genreService")
	private GenreService service;
	
	@RequestMapping("/genrechart.do")
	public String genrechart(Model model) {
		
		System.out.println("Ctrl genrechart");
		ArrayList<GenreVO> genre = service.genrechart();
		model.addAttribute("genres", genre);
		
		return "/mypage";
	}
}
