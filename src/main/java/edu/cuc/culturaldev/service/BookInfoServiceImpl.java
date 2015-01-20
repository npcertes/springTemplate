package edu.cuc.culturaldev.service;

import java.util.List;
import java.util.Map;

import lombok.Setter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import edu.cuc.culturaldev.bean.BookInfo;
import edu.cuc.culturaldev.dao.BookInfoDao;
import edu.cuc.culturaldev.search.BookInfoSearchBean;
import edu.cuc.culturaldev.common.util.PageModel;

@Component(value="bookInfoService")
@Service
@Transactional(propagation=Propagation.SUPPORTS,readOnly=true)
public class BookInfoServiceImpl implements BookInfoService{

	@Autowired
	@Setter
	private BookInfoDao bookInfoDao;
		
	public void addBookInfo(BookInfo bookInfo){
		bookInfoDao.insertBookInfo(bookInfo);
	}
	
	@Transactional(propagation=Propagation.REQUIRED,readOnly=false)
	public void batchAddBookInfo(List<BookInfo> list){
		bookInfoDao.batchInsertBookInfo(list);
	}
	
	public BookInfo getBookInfoByExample(BookInfo bookInfo){
		return bookInfoDao.getBookInfoByExample(bookInfo);
	}
	
	public void modifyBookInfoByExample(BookInfo bookInfo){
		bookInfoDao.updateBookInfoByExample(bookInfo);
	}
	
	public void removeBookInfoByExample(BookInfo bookInfo){
		bookInfoDao.deleteBookInfoByExample(bookInfo);
	}
	
	public void removeBookInfoByCondition(BookInfoSearchBean condition){
		bookInfoDao.deleteBookInfoByCondition(condition);
	}
	
	@Transactional(propagation=Propagation.REQUIRED,readOnly=false)
	public void batchRemoveBookInfoByExample(List<BookInfo> list){
		bookInfoDao.batchDeleteBookInfoByExample(list);
	}
	
	public PageModel queryBookInfoBySql(String where,int offset,int limit){
		//condition.buildSql();//ֻ��orderSql
		PageModel pm=new PageModel();
		pm.setOffset(offset);
		pm.setPageSize(limit);
		pm.setCount(bookInfoDao.getBookInfoCountByWhere(where));
		pm.setData(bookInfoDao.getBookInfoListByWhere(where,offset,limit));
		return pm;
	}
	
	public PageModel queryBookInfoByCondition(BookInfoSearchBean condition){
		PageModel pm=new PageModel();
		pm.setOffset(condition.getStart());
		pm.setPageSize(condition.getCount());
		pm.setCount(bookInfoDao.getBookInfoCountByCondition(condition));
		pm.setData(bookInfoDao.getBookInfoListByCondition(condition));
		return pm;
	}
	
	public List<BookInfo> queryBookInfoListByWhere(String where){
		return bookInfoDao.getBookInfoListBySql(where);
	}
	
	public List<BookInfo> queryBookInfoListByExample(BookInfo bookInfo){
		return bookInfoDao.getBookInfoListByExample(bookInfo);
	}
	
	public List<BookInfo> getBookInfoByCondition(BookInfoSearchBean condition){
		return bookInfoDao.getBookInfoByCondition(condition);
	}
	
	public List<BookInfo> queryBookInfoListByCondition(BookInfoSearchBean condition){
		return bookInfoDao.getBookInfoListByCondition(condition);
	}
	
	public void modifyBookInfoBySql(String sql){
		bookInfoDao.updateBookInfoByWhere(sql);
	}
	
	public void modifyBookInfoByCondition(BookInfoSearchBean condition){
		bookInfoDao.updateBookInfo(condition);
	}
	
	public void removeBookInfoBySql(String sql){
		bookInfoDao.deleteBookInfoByWhere(sql);
	}
	
	public int getBookInfoCountBySql(String sql){
		return bookInfoDao.getBookInfoCountByWhere(sql);
	}
	
	public int getBookInfoCountByExample(BookInfo bookInfo){
		return bookInfoDao.getBookInfoCountByExample(bookInfo);
	}
	
	public int getBookInfoCountByCondition(BookInfoSearchBean condition){
		return bookInfoDao.getBookInfoCountByCondition(condition);
	}
	
	public Map<String,Object> getBookInfoColumnByCondition(BookInfoSearchBean condition){
		return bookInfoDao.getBookInfoColumnByCondition(condition);
	}
	
	public void updateBookInfoByExample(BookInfo bookInfo){
		bookInfoDao.updateBookInfoByExample(bookInfo);
	}
}
