package edu.cuc.culturaldev.portal.action;

import lombok.extern.slf4j.Slf4j;

import java.util.List;
import java.util.UUID;






import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.alibaba.fastjson.JSON;

import edu.cuc.culturaldev.common.util.PageModel;
import edu.cuc.culturaldev.bean.BookInfo;
import edu.cuc.culturaldev.common.spring.BaseAction;
import edu.cuc.culturaldev.search.BookInfoSearchBean;
import edu.cuc.culturaldev.service.BookInfoService;

@Controller
@RequestMapping(value="/test")
@Slf4j
public class TestAction extends BaseAction{
	
	@Autowired
	private BookInfoService bookInfoService;
	
	@RequestMapping(value="/listLibInfo")
	public String listLibInfo(ModelMap result,
			@RequestParam(value = "pageno", required = false, defaultValue = "1") int pageNo,
			@RequestParam(value = "pagesize", required = false, defaultValue = "5") int pageSize){
		
		//log.info("listLibInfo@TestAcion line 28");
		/*
		String where = "where 1=1;";
		List<BookInfo> listInfo = bookInfoService.queryBookInfoListByWhere(where);
		*/
		BookInfoSearchBean condition = new BookInfoSearchBean();
		condition.setCount(pageSize);
		condition.setStart((pageNo - 1) * pageSize);
		PageModel pageModel = bookInfoService.queryBookInfoByCondition(condition);
		List<BookInfo> listInfo = (List<BookInfo>)pageModel.getData();
		
		result.put("list", listInfo);
		result.put("listJson", JSON.toJSONString(listInfo));
		result.put("pm", pageModel);
		return "portal/test/listLibInfo";
	}
	
	/**
	 * 最新动态分页
	 * 
	 * @return
	 */
	@RequestMapping(value = "/listLibInfo/{pageno}")
	public String listBookInfo(
			BookInfoSearchBean condition,
			ModelMap result,
			@PathVariable(value = "pageno") int pageNo,
			@RequestParam(value = "pagesize", required = false, defaultValue = "5") int pageSize) {
		
		//log.info("pageNo list @TestAction line 70");
		condition.setCount(pageSize);
		condition.setStart((pageNo - 1) * pageSize);
		PageModel pageModel = bookInfoService.queryBookInfoByCondition(condition);
		List<BookInfo> listInfo = (List<BookInfo>)pageModel.getData();
		
		result.put("list", listInfo);
		result.put("listJson", JSON.toJSONString(listInfo));
		result.put("pm", pageModel);
		return "portal/test/listLibInfo";
	}
	
	/** 
     * 获得一个UUID 
     * @return String UUID 
     */ 
    public String getUUID(){ 
        String s = UUID.randomUUID().toString(); 
        //去掉“-”符号 
        return s.substring(0,8)+s.substring(9,13)+s.substring(14,18)+s.substring(19,23)+s.substring(24); 
    }
    
    @RequestMapping(value="/goAddLibInfo")
	public String goAddLibInfo(){
		
		return "portal/test/addLibInfo";
	}
	
	@RequestMapping(value="/addLibInfo")
	public String addLibInfo(ModelMap result,BookInfo bookInfo){
		
		//log.info("addLibInfo@TestAcion line 42 bookInfo : " + bookInfo.getBookAuthor());
		
		String uuidStr = this.getUUID();
		bookInfo.setBookId(uuidStr);
		/*
		bookInfo.setBookAuthor(bookInfo.getBookAuthor().trim());
		bookInfo.setBookName(bookInfo.getBookName().trim());
		bookInfo.setBookBorrowNum(bookInfo.getBookBorrowNum().trim());
		bookInfo.setBookKeyword(bookInfo.getBookKeyword().trim());
		bookInfo.setBookNumber(bookInfo.getBookNumber().trim());
		bookInfo.setBookPress(bookInfo.getBookPress().trim());
		*/
		bookInfoService.addBookInfo(bookInfo);
		result.put("success", true);		
		return "portal/test/addLibInfo";
	}
}
