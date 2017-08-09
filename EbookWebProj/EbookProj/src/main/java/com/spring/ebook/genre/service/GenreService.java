package com.spring.ebook.genre.service;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.spring.ebook.model.genre.dao.GenreDao;
import com.spring.ebook.model.genre.vo.GenreVO;

@Service("genreService")
public class GenreService {
	
	@Resource(name="genreDao")
	private GenreDao dao;
	
	public ArrayList<GenreVO> genrechart() {
		System.out.println("Service genreChart");
		return dao.genrechartRow();
	}
}
