package edu.cuc.culturaldev.dao;

import org.apache.ibatis.executor.BatchResult;

import java.util.List;
import java.util.Map;
import edu.cuc.culturaldev.search.BookInfoSearchBean;
import edu.cuc.culturaldev.bean.BookInfo;
/**
 * <p>Title: </p>
 *
 * <p>Description:BookInfo</p>
 *
 * <p>Copyright: Copyright (c) 2011</p>
 *
 * <p>Author:Zhouzhi</p>
 *
 * @author AutoCreate
 * @version 1.0
 */

public interface BookInfoDao {

	public int insertBookInfo(BookInfo bookInfo);

  	public int updateBookInfo(BookInfo bookInfo);

  	public BookInfo getBookInfoByWhere(String where);
  
  	public List<BookInfo> getBookInfoListByWhere(String where, int offset, int limit);
  	
  	public List<BookInfo> getBookInfoListByCondition(BookInfoSearchBean condition);
  
  	public List<BookInfo> getBookInfoListBySql(String sql);
  
  	public int getBookInfoCountByWhere(String where);
  	
  	public int getBookInfoCountByExample(BookInfo bookInfo);
  	
  	public int getBookInfoCountByCondition(BookInfoSearchBean condition);
  
  	public int updateBookInfoByWhere(String where);
  
  	public int deleteBookInfoByWhere(String where);
  	
  	public List<BatchResult> batchInsertBookInfo(List<BookInfo> list);
  	
  	public BookInfo getBookInfoByExample(BookInfo bookInfo);
  	
  	public List<BookInfo> getBookInfoListByExample(BookInfo bookInfo);
  	
  	public int deleteBookInfoByExample(BookInfo bookInfo);
  	
  	public int deleteBookInfoByCondition(BookInfoSearchBean condition);
  	
  	public List<BatchResult> batchDeleteBookInfoByExample(List<BookInfo> list);
  	
  	public List<BookInfo> getBookInfoByCondition(BookInfoSearchBean condition);
  	
  	public int updateBookInfo(BookInfoSearchBean condition);
  	
  	public Map<String,Object> getBookInfoColumnByCondition(BookInfoSearchBean condition);
  	
  	public List<Map<String,Object>> getBookInfoColumnListByCondition(BookInfoSearchBean condition);
  	
  	public int updateBookInfoByExample(BookInfo bookInfo);
}
