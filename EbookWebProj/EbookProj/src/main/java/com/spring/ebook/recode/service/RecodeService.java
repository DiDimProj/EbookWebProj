package com.spring.ebook.recode.service;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.spring.ebook.model.recode.dao.RecodeDao;

@Service("recodeService")
public class RecodeService {
	
	@Resource(name="recodeDao")
	private RecodeDao dao;
}
