package edu.cuc.culturaldev.service;

import java.util.List;
import java.util.Map;
import edu.cuc.culturaldev.bean.BookInfo;
import edu.cuc.culturaldev.search.BookInfoSearchBean;
import edu.cuc.culturaldev.common.util.PageModel;

public interface BookInfoService {

	/**
	 * ����BookInfo��¼
	 * @param BookInfo
	 */
	public void addBookInfo(BookInfo bookInfo);
	
	/**
	 * ��������BookInfo��¼
	 * @param List
	 */
	public void batchAddBookInfo(List<BookInfo> list);
	
	/**
	 * 
	 * @param bookInfo
	 * @return BookInfo
	 */
	public BookInfo getBookInfoByExample(BookInfo bookInfo);
	
	/**
	 * �޸�BookInfo��¼
	 * @param BookInfo
	 */
	public void modifyBookInfoByExample(BookInfo bookInfo);
	
	/**
	 * ���BookInfoʵ��ɾ���¼
	 * @param BookInfo
	 */
	public void removeBookInfoByExample(BookInfo bookInfo);
	
	/**
	 * �������ɾ���¼
	 * @param BookInfoSearchBean
	 */
	public void removeBookInfoByCondition(BookInfoSearchBean condition);
	
	public void batchRemoveBookInfoByExample(List<BookInfo> list);
	
	public PageModel queryBookInfoByCondition(BookInfoSearchBean condition);
	
	public PageModel queryBookInfoBySql(String sql, int offset, int limit);
	
	public List<BookInfo> queryBookInfoListByWhere(String where);
	
	public List<BookInfo> queryBookInfoListByExample(BookInfo bookInfo);
	
	public List<BookInfo> getBookInfoByCondition(BookInfoSearchBean condition);
	
	public List<BookInfo> queryBookInfoListByCondition(BookInfoSearchBean condition);
	
	public void modifyBookInfoBySql(String sql);
	
	public void modifyBookInfoByCondition(BookInfoSearchBean condition);
	
	public void removeBookInfoBySql(String sql);
	
	public int getBookInfoCountBySql(String sql);
	
	public int getBookInfoCountByExample(BookInfo bookInfo);
	
	public int getBookInfoCountByCondition(BookInfoSearchBean condition);
	
	public Map<String,Object> getBookInfoColumnByCondition(BookInfoSearchBean condition);
	
	public void updateBookInfoByExample(BookInfo bookInfo);
}
