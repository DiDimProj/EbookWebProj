package com.spring.ebook.recode.ctrl;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import com.spring.ebook.recode.service.RecodeService;


@Controller
public class RecodeCtrl {
	@Resource(name="recodeService")
	private RecodeService serv;

}
