package edu.cuc.culturaldev.portal.action;

import java.util.List;

import lombok.extern.slf4j.Slf4j;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.cuc.culturaldev.common.spring.BaseAction;
import edu.cuc.culturaldev.service.BookInfoService;
import edu.cuc.culturaldev.bean.BookInfo;


@Controller
@RequestMapping(value="/index")
@Slf4j
public class BookInfoAction extends BaseAction{
	
	@Autowired
	private BookInfoService bookInfoService;
	
	@RequestMapping(value="/goAddBookInfo")
	public String goAddBookInfo(){
		
		return "/content/addBookInfo";
	}
	
	@RequestMapping(value="/listBookInfo")
	public String listBookInfo(ModelMap result){
		//log.info("listBookInfo @BookInfoAction line 33");
		return "/content/listBookInfo";
	}
}
