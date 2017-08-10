package com.spring.ebook.recode.service;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.spring.ebook.model.recode.dao.RecodeDao;
import com.spring.ebook.model.recode.vo.RecodeVO;
import com.spring.ebook.model.userbook.vo.UserBookVO;

@Service("recodeService")
public class RecodeService {
	
	@Resource(name="recodeDao")
	private RecodeDao dao;
	
	public int delReadbook(RecodeVO delreadbook) {
		System.out.println("Service delreadbook");
		return dao.delReadbookRow(delreadbook);
	}
}
