package edu.cuc.culturaldev.dao;

import org.apache.ibatis.executor.BatchResult;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.support.SqlSessionDaoSupportExt;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
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
 * <p>Author: Guodang Zuo</p>
 *
 * @author AutoCreate
 * @version 1.0
 */

@Component(value="bookInfoDao")
public class BookInfoDaoImpl extends SqlSessionDaoSupportExt implements BookInfoDao {
	public BookInfoDaoImpl() {
		
    }

  	public int insertBookInfo(BookInfo bookInfo){
    	return getSqlSession().insert("edu.cuc.culturaldev.dao.BookInfoDao.insertBookInfo", bookInfo);
  	}

  	public int updateBookInfo(BookInfo bookInfo){
    	return getSqlSession().update("edu.cuc.culturaldev.dao.BookInfoDao.updateBookInfo", bookInfo);
  	}
  
  	public BookInfo getBookInfoByWhere(String where){
    	return (BookInfo) getSqlSession().selectOne("edu.cuc.culturaldev.dao.BookInfoDao.getBookInfoByWhere", where);
  	}
  
  	public List<BookInfo> getBookInfoListByWhere(String where){
    	return getSqlSession().selectList("edu.cuc.culturaldev.dao.BookInfoDao.getBookInfoListByWhere", where);
  	}
  	
  	public List<BookInfo> getBookInfoListByWhere(String where,int offset,int limit){
  		return getSqlSession().selectList("edu.cuc.culturaldev.dao.BookInfoDao.getBookInfoListByWhere", where,new RowBounds(offset, limit));
  	}
  	
  	public List<BookInfo> getBookInfoListByCondition(BookInfoSearchBean condition){
    	return getSqlSession().selectList("edu.cuc.culturaldev.dao.BookInfoDao.getBookInfoListByCondition", condition,new RowBounds(condition.getStart(), condition.getCount()));
  	}
  
  	public List<BookInfo> getBookInfoListBySql(String sql){
    	return getSqlSession().selectList("edu.cuc.culturaldev.dao.BookInfoDao.getBookInfoByWhere", sql);
  	}
  
  	public int getBookInfoCountByWhere(String where){
    	return getSqlSession().selectOne("edu.cuc.culturaldev.dao.BookInfoDao.getBookInfoCountByWhere", where);
  	}
  	
  	public int getBookInfoCountByExample(BookInfo bookInfo){
    	return getSqlSession().selectOne("edu.cuc.culturaldev.dao.BookInfoDao.getBookInfoCountByExample", bookInfo);
  	}
  	
  	public int getBookInfoCountByCondition(BookInfoSearchBean condition){
    	return getSqlSession().selectOne("edu.cuc.culturaldev.dao.BookInfoDao.getBookInfoCountByCondition", condition);
  	}
  
  	public int updateBookInfoByWhere(String where){
    	return getSqlSession().update("edu.cuc.culturaldev.dao.BookInfoDao.updateBookInfoByWhere", where);
  	}
  
  	public int deleteBookInfoByWhere(String where){
   		return getSqlSession().delete("edu.cuc.culturaldev.dao.BookInfoDao.deleteBookInfoByWhere",where);
  	}
  	
  	public List<BatchResult> batchInsertBookInfo(List<BookInfo> list){
  		List<BatchResult> results=new ArrayList<BatchResult>();
  		SqlSession sqlSession=getBatchSqlSession();
  		for (int i=1;i<=list.size();i++) {
			sqlSession.insert("edu.cuc.culturaldev.dao.BookInfoDao.insertBookInfo", list.get(i-1));
			if(i%1000==0)
				results.addAll(sqlSession.flushStatements());
		}
		results.addAll(sqlSession.flushStatements());
		return results;
  	}
  	
  	public BookInfo getBookInfoByExample(BookInfo bookInfo){
  		return getSqlSession().selectOne("edu.cuc.culturaldev.dao.BookInfoDao.getBookInfoByExample", bookInfo);
  	}
  	
  	public List<BookInfo> getBookInfoListByExample(BookInfo bookInfo){
  		return getSqlSession().selectList("edu.cuc.culturaldev.dao.BookInfoDao.getBookInfoByExample", bookInfo);
  	}
  	
  	public int deleteBookInfoByExample(BookInfo bookInfo){
  		return getSqlSession().delete("edu.cuc.culturaldev.dao.BookInfoDao.deleteBookInfoByExample",bookInfo);
  	}
  	
  	public int deleteBookInfoByCondition(BookInfoSearchBean condition){
  		return getSqlSession().delete("edu.cuc.culturaldev.dao.BookInfoDao.deleteBookInfoByCondition",condition);
  	}
  	
  	public List<BatchResult> batchDeleteBookInfoByExample(List<BookInfo> list){
  		List<BatchResult> results=new ArrayList<BatchResult>();
  		SqlSession sqlSession=getBatchSqlSession();
  		for (int i=1;i<=list.size();i++) {
			sqlSession.delete("edu.cuc.culturaldev.dao.BookInfoDao.deleteBookInfoByExample", list.get(i-1));
			if(i%1000==0)
				results.addAll(sqlSession.flushStatements());
		}
		results.addAll(sqlSession.flushStatements());
		return results;
  	}
  	
  	public List<BookInfo> getBookInfoByCondition(BookInfoSearchBean condition){
    	return getSqlSession().selectList("edu.cuc.culturaldev.dao.BookInfoDao.getBookInfoByCondition", condition);
  	}
  	
  	public int updateBookInfo(BookInfoSearchBean condition){
  		return getSqlSession().update("edu.cuc.culturaldev.dao.BookInfoDao.updateBookInfoByCondition", condition);
  	}
  	
  	public Map<String,Object> getBookInfoColumnByCondition(BookInfoSearchBean condition){
  		return getSqlSession().selectOne("edu.cuc.culturaldev.dao.BookInfoDao.getBookInfoColumnByCondition", condition);
  	}
  	
  	public List<Map<String,Object>> getBookInfoColumnListByCondition(BookInfoSearchBean condition){
  		return getSqlSession().selectList("edu.cuc.culturaldev.dao.BookInfoDao.getBookInfoColumnByCondition", condition);
  	}
  	
  	public int updateBookInfoByExample(BookInfo bookInfo){
  		return getSqlSession().update("edu.cuc.culturaldev.dao.BookInfoDao.updateBookInfoByExample", bookInfo);
  	}
}
