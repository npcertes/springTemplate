package edu.cuc.culturaldev.search;

import java.util.*;

import edu.cuc.culturaldev.common.util.SearchBean;

public class BookInfoSearchBean extends SearchBean{
	
	/** 原始属性 主键**/
	private String bookId;
	/** 原始属性 **/
	private String bookName;
	/** 等于 **/
	private String equalsBookName;
	/** 是否为空 **/
	private Boolean isNotNullBookName;
	/** In **/
	private List<String> inBookName;
	/** NotIn **/
	private List<String> notInBookName;
	/** 不等于 **/
	private String noEqualsBookName;
	/** 大于 **/
	private String greaterBookName;
	/** 大于等于 **/
	private String greaterEqualsBookName;
	/** 小于 **/
	private String lessBookName;
	/** 小于等于 **/
	private String lessEqualsBookName;
	/** Like **/
	private String likeBookName;
	/** Like左匹配 **/
	private String leftLikeBookName;
	/** Like右匹配 **/
	private String rightLikeBookName;
	/** 原始属性 **/
	private String bookPress;
	/** 等于 **/
	private String equalsBookPress;
	/** 是否为空 **/
	private Boolean isNotNullBookPress;
	/** In **/
	private List<String> inBookPress;
	/** NotIn **/
	private List<String> notInBookPress;
	/** 不等于 **/
	private String noEqualsBookPress;
	/** 大于 **/
	private String greaterBookPress;
	/** 大于等于 **/
	private String greaterEqualsBookPress;
	/** 小于 **/
	private String lessBookPress;
	/** 小于等于 **/
	private String lessEqualsBookPress;
	/** Like **/
	private String likeBookPress;
	/** Like左匹配 **/
	private String leftLikeBookPress;
	/** Like右匹配 **/
	private String rightLikeBookPress;
	/** 原始属性 **/
	private String bookAuthor;
	/** 等于 **/
	private String equalsBookAuthor;
	/** 是否为空 **/
	private Boolean isNotNullBookAuthor;
	/** In **/
	private List<String> inBookAuthor;
	/** NotIn **/
	private List<String> notInBookAuthor;
	/** 不等于 **/
	private String noEqualsBookAuthor;
	/** 大于 **/
	private String greaterBookAuthor;
	/** 大于等于 **/
	private String greaterEqualsBookAuthor;
	/** 小于 **/
	private String lessBookAuthor;
	/** 小于等于 **/
	private String lessEqualsBookAuthor;
	/** Like **/
	private String likeBookAuthor;
	/** Like左匹配 **/
	private String leftLikeBookAuthor;
	/** Like右匹配 **/
	private String rightLikeBookAuthor;
	/** 原始属性 **/
	private String bookKeyword;
	/** 等于 **/
	private String equalsBookKeyword;
	/** 是否为空 **/
	private Boolean isNotNullBookKeyword;
	/** In **/
	private List<String> inBookKeyword;
	/** NotIn **/
	private List<String> notInBookKeyword;
	/** 不等于 **/
	private String noEqualsBookKeyword;
	/** 大于 **/
	private String greaterBookKeyword;
	/** 大于等于 **/
	private String greaterEqualsBookKeyword;
	/** 小于 **/
	private String lessBookKeyword;
	/** 小于等于 **/
	private String lessEqualsBookKeyword;
	/** Like **/
	private String likeBookKeyword;
	/** Like左匹配 **/
	private String leftLikeBookKeyword;
	/** Like右匹配 **/
	private String rightLikeBookKeyword;
	/** 原始属性 **/
	private String bookNumber;
	/** 等于 **/
	private String equalsBookNumber;
	/** 是否为空 **/
	private Boolean isNotNullBookNumber;
	/** In **/
	private List<String> inBookNumber;
	/** NotIn **/
	private List<String> notInBookNumber;
	/** 不等于 **/
	private String noEqualsBookNumber;
	/** 大于 **/
	private String greaterBookNumber;
	/** 大于等于 **/
	private String greaterEqualsBookNumber;
	/** 小于 **/
	private String lessBookNumber;
	/** 小于等于 **/
	private String lessEqualsBookNumber;
	/** Like **/
	private String likeBookNumber;
	/** Like左匹配 **/
	private String leftLikeBookNumber;
	/** Like右匹配 **/
	private String rightLikeBookNumber;
	/** 原始属性 **/
	private String bookBorrowNum;
	/** 等于 **/
	private String equalsBookBorrowNum;
	/** 是否为空 **/
	private Boolean isNotNullBookBorrowNum;
	/** In **/
	private List<String> inBookBorrowNum;
	/** NotIn **/
	private List<String> notInBookBorrowNum;
	/** 不等于 **/
	private String noEqualsBookBorrowNum;
	/** 大于 **/
	private String greaterBookBorrowNum;
	/** 大于等于 **/
	private String greaterEqualsBookBorrowNum;
	/** 小于 **/
	private String lessBookBorrowNum;
	/** 小于等于 **/
	private String lessEqualsBookBorrowNum;
	/** Like **/
	private String likeBookBorrowNum;
	/** Like左匹配 **/
	private String leftLikeBookBorrowNum;
	/** Like右匹配 **/
	private String rightLikeBookBorrowNum;

	
  	public BookInfoSearchBean() {
  	}
  	
  	public void buildSql(){
  		//ע���ֹ�ƴ��sql�Ͷ�̬ƴ��sql�Ĳ�ͬ
  		StringBuffer whereBuf=new StringBuffer("");
  		StringBuffer orderBuf=new StringBuffer();
  		//TODO �ڴ˴����Ӳ�ѯ����
  		setCountSql(whereBuf.toString());
  		//TODO �ڴ˴���������,Ϊ��ü��ݸ�����ݿ⽨��������������
  		setOrderSql(orderBuf.toString());
  		setSql(whereBuf.append(" ").append(orderBuf).toString());
  	}
  	
  	public void setBookId(String bookId){
		this.bookId=bookId;
	}
	public String getBookId(){
		return bookId;
	}
	public void setBookName(String bookName){
		this.bookName=bookName;
	}
	public String getBookName(){
		return bookName;
	}
	public void setEqualsBookName(String equalsBookName){
		this.equalsBookName=equalsBookName;
	}
	public String getEqualsBookName(){
		return equalsBookName;
	}
	public void setIsNotNullBookName(Boolean isNotNullBookName){
		this.isNotNullBookName=isNotNullBookName;
	}
	public Boolean getIsNotNullBookName(){
		return isNotNullBookName;
	}
	public void setInBookName(List<String> inBookName){
		this.inBookName=inBookName;
	}
	public List<String> getInBookName(){
		return inBookName;
	}
	public void setNotInBookName(List<String> notInBookName){
		this.notInBookName=notInBookName;
	}
	public List<String> getNotInBookName(){
		return notInBookName;
	}
	public void setNoEqualsBookName(String noEqualsBookName){
		this.noEqualsBookName=noEqualsBookName;
	}
	public String getNoEqualsBookName(){
		return noEqualsBookName;
	}
	public void setGreaterBookName(String greaterBookName){
		this.greaterBookName=greaterBookName;
	}
	public String getGreaterBookName(){
		return greaterBookName;
	}
	public void setGreaterEqualsBookName(String greaterEqualsBookName){
		this.greaterEqualsBookName=greaterEqualsBookName;
	}
	public String getGreaterEqualsBookName(){
		return greaterEqualsBookName;
	}
	public void setLessBookName(String lessBookName){
		this.lessBookName=lessBookName;
	}
	public String getLessBookName(){
		return lessBookName;
	}
	public void setLessEqualsBookName(String lessEqualsBookName){
		this.lessEqualsBookName=lessEqualsBookName;
	}
	public String getLessEqualsBookName(){
		return lessEqualsBookName;
	}
	public void setLikeBookName(String likeBookName){
		this.likeBookName=likeBookName;
	}
	public String getLikeBookName(){
		return likeBookName;
	}
	public void setLeftLikeBookName(String leftLikeBookName){
		this.leftLikeBookName=likeBookName;
	}
	public String getLeftLikeBookName(){
		return leftLikeBookName;
	}
	public void setRightLikeBookName(String rightLikeBookName){
		this.rightLikeBookName=rightLikeBookName;
	}
	public String getRightLikeBookName(){
		return rightLikeBookName;
	}
	public void setBookPress(String bookPress){
		this.bookPress=bookPress;
	}
	public String getBookPress(){
		return bookPress;
	}
	public void setEqualsBookPress(String equalsBookPress){
		this.equalsBookPress=equalsBookPress;
	}
	public String getEqualsBookPress(){
		return equalsBookPress;
	}
	public void setIsNotNullBookPress(Boolean isNotNullBookPress){
		this.isNotNullBookPress=isNotNullBookPress;
	}
	public Boolean getIsNotNullBookPress(){
		return isNotNullBookPress;
	}
	public void setInBookPress(List<String> inBookPress){
		this.inBookPress=inBookPress;
	}
	public List<String> getInBookPress(){
		return inBookPress;
	}
	public void setNotInBookPress(List<String> notInBookPress){
		this.notInBookPress=notInBookPress;
	}
	public List<String> getNotInBookPress(){
		return notInBookPress;
	}
	public void setNoEqualsBookPress(String noEqualsBookPress){
		this.noEqualsBookPress=noEqualsBookPress;
	}
	public String getNoEqualsBookPress(){
		return noEqualsBookPress;
	}
	public void setGreaterBookPress(String greaterBookPress){
		this.greaterBookPress=greaterBookPress;
	}
	public String getGreaterBookPress(){
		return greaterBookPress;
	}
	public void setGreaterEqualsBookPress(String greaterEqualsBookPress){
		this.greaterEqualsBookPress=greaterEqualsBookPress;
	}
	public String getGreaterEqualsBookPress(){
		return greaterEqualsBookPress;
	}
	public void setLessBookPress(String lessBookPress){
		this.lessBookPress=lessBookPress;
	}
	public String getLessBookPress(){
		return lessBookPress;
	}
	public void setLessEqualsBookPress(String lessEqualsBookPress){
		this.lessEqualsBookPress=lessEqualsBookPress;
	}
	public String getLessEqualsBookPress(){
		return lessEqualsBookPress;
	}
	public void setLikeBookPress(String likeBookPress){
		this.likeBookPress=likeBookPress;
	}
	public String getLikeBookPress(){
		return likeBookPress;
	}
	public void setLeftLikeBookPress(String leftLikeBookPress){
		this.leftLikeBookPress=likeBookPress;
	}
	public String getLeftLikeBookPress(){
		return leftLikeBookPress;
	}
	public void setRightLikeBookPress(String rightLikeBookPress){
		this.rightLikeBookPress=rightLikeBookPress;
	}
	public String getRightLikeBookPress(){
		return rightLikeBookPress;
	}
	public void setBookAuthor(String bookAuthor){
		this.bookAuthor=bookAuthor;
	}
	public String getBookAuthor(){
		return bookAuthor;
	}
	public void setEqualsBookAuthor(String equalsBookAuthor){
		this.equalsBookAuthor=equalsBookAuthor;
	}
	public String getEqualsBookAuthor(){
		return equalsBookAuthor;
	}
	public void setIsNotNullBookAuthor(Boolean isNotNullBookAuthor){
		this.isNotNullBookAuthor=isNotNullBookAuthor;
	}
	public Boolean getIsNotNullBookAuthor(){
		return isNotNullBookAuthor;
	}
	public void setInBookAuthor(List<String> inBookAuthor){
		this.inBookAuthor=inBookAuthor;
	}
	public List<String> getInBookAuthor(){
		return inBookAuthor;
	}
	public void setNotInBookAuthor(List<String> notInBookAuthor){
		this.notInBookAuthor=notInBookAuthor;
	}
	public List<String> getNotInBookAuthor(){
		return notInBookAuthor;
	}
	public void setNoEqualsBookAuthor(String noEqualsBookAuthor){
		this.noEqualsBookAuthor=noEqualsBookAuthor;
	}
	public String getNoEqualsBookAuthor(){
		return noEqualsBookAuthor;
	}
	public void setGreaterBookAuthor(String greaterBookAuthor){
		this.greaterBookAuthor=greaterBookAuthor;
	}
	public String getGreaterBookAuthor(){
		return greaterBookAuthor;
	}
	public void setGreaterEqualsBookAuthor(String greaterEqualsBookAuthor){
		this.greaterEqualsBookAuthor=greaterEqualsBookAuthor;
	}
	public String getGreaterEqualsBookAuthor(){
		return greaterEqualsBookAuthor;
	}
	public void setLessBookAuthor(String lessBookAuthor){
		this.lessBookAuthor=lessBookAuthor;
	}
	public String getLessBookAuthor(){
		return lessBookAuthor;
	}
	public void setLessEqualsBookAuthor(String lessEqualsBookAuthor){
		this.lessEqualsBookAuthor=lessEqualsBookAuthor;
	}
	public String getLessEqualsBookAuthor(){
		return lessEqualsBookAuthor;
	}
	public void setLikeBookAuthor(String likeBookAuthor){
		this.likeBookAuthor=likeBookAuthor;
	}
	public String getLikeBookAuthor(){
		return likeBookAuthor;
	}
	public void setLeftLikeBookAuthor(String leftLikeBookAuthor){
		this.leftLikeBookAuthor=likeBookAuthor;
	}
	public String getLeftLikeBookAuthor(){
		return leftLikeBookAuthor;
	}
	public void setRightLikeBookAuthor(String rightLikeBookAuthor){
		this.rightLikeBookAuthor=rightLikeBookAuthor;
	}
	public String getRightLikeBookAuthor(){
		return rightLikeBookAuthor;
	}
	public void setBookKeyword(String bookKeyword){
		this.bookKeyword=bookKeyword;
	}
	public String getBookKeyword(){
		return bookKeyword;
	}
	public void setEqualsBookKeyword(String equalsBookKeyword){
		this.equalsBookKeyword=equalsBookKeyword;
	}
	public String getEqualsBookKeyword(){
		return equalsBookKeyword;
	}
	public void setIsNotNullBookKeyword(Boolean isNotNullBookKeyword){
		this.isNotNullBookKeyword=isNotNullBookKeyword;
	}
	public Boolean getIsNotNullBookKeyword(){
		return isNotNullBookKeyword;
	}
	public void setInBookKeyword(List<String> inBookKeyword){
		this.inBookKeyword=inBookKeyword;
	}
	public List<String> getInBookKeyword(){
		return inBookKeyword;
	}
	public void setNotInBookKeyword(List<String> notInBookKeyword){
		this.notInBookKeyword=notInBookKeyword;
	}
	public List<String> getNotInBookKeyword(){
		return notInBookKeyword;
	}
	public void setNoEqualsBookKeyword(String noEqualsBookKeyword){
		this.noEqualsBookKeyword=noEqualsBookKeyword;
	}
	public String getNoEqualsBookKeyword(){
		return noEqualsBookKeyword;
	}
	public void setGreaterBookKeyword(String greaterBookKeyword){
		this.greaterBookKeyword=greaterBookKeyword;
	}
	public String getGreaterBookKeyword(){
		return greaterBookKeyword;
	}
	public void setGreaterEqualsBookKeyword(String greaterEqualsBookKeyword){
		this.greaterEqualsBookKeyword=greaterEqualsBookKeyword;
	}
	public String getGreaterEqualsBookKeyword(){
		return greaterEqualsBookKeyword;
	}
	public void setLessBookKeyword(String lessBookKeyword){
		this.lessBookKeyword=lessBookKeyword;
	}
	public String getLessBookKeyword(){
		return lessBookKeyword;
	}
	public void setLessEqualsBookKeyword(String lessEqualsBookKeyword){
		this.lessEqualsBookKeyword=lessEqualsBookKeyword;
	}
	public String getLessEqualsBookKeyword(){
		return lessEqualsBookKeyword;
	}
	public void setLikeBookKeyword(String likeBookKeyword){
		this.likeBookKeyword=likeBookKeyword;
	}
	public String getLikeBookKeyword(){
		return likeBookKeyword;
	}
	public void setLeftLikeBookKeyword(String leftLikeBookKeyword){
		this.leftLikeBookKeyword=likeBookKeyword;
	}
	public String getLeftLikeBookKeyword(){
		return leftLikeBookKeyword;
	}
	public void setRightLikeBookKeyword(String rightLikeBookKeyword){
		this.rightLikeBookKeyword=rightLikeBookKeyword;
	}
	public String getRightLikeBookKeyword(){
		return rightLikeBookKeyword;
	}
	public void setBookNumber(String bookNumber){
		this.bookNumber=bookNumber;
	}
	public String getBookNumber(){
		return bookNumber;
	}
	public void setEqualsBookNumber(String equalsBookNumber){
		this.equalsBookNumber=equalsBookNumber;
	}
	public String getEqualsBookNumber(){
		return equalsBookNumber;
	}
	public void setIsNotNullBookNumber(Boolean isNotNullBookNumber){
		this.isNotNullBookNumber=isNotNullBookNumber;
	}
	public Boolean getIsNotNullBookNumber(){
		return isNotNullBookNumber;
	}
	public void setInBookNumber(List<String> inBookNumber){
		this.inBookNumber=inBookNumber;
	}
	public List<String> getInBookNumber(){
		return inBookNumber;
	}
	public void setNotInBookNumber(List<String> notInBookNumber){
		this.notInBookNumber=notInBookNumber;
	}
	public List<String> getNotInBookNumber(){
		return notInBookNumber;
	}
	public void setNoEqualsBookNumber(String noEqualsBookNumber){
		this.noEqualsBookNumber=noEqualsBookNumber;
	}
	public String getNoEqualsBookNumber(){
		return noEqualsBookNumber;
	}
	public void setGreaterBookNumber(String greaterBookNumber){
		this.greaterBookNumber=greaterBookNumber;
	}
	public String getGreaterBookNumber(){
		return greaterBookNumber;
	}
	public void setGreaterEqualsBookNumber(String greaterEqualsBookNumber){
		this.greaterEqualsBookNumber=greaterEqualsBookNumber;
	}
	public String getGreaterEqualsBookNumber(){
		return greaterEqualsBookNumber;
	}
	public void setLessBookNumber(String lessBookNumber){
		this.lessBookNumber=lessBookNumber;
	}
	public String getLessBookNumber(){
		return lessBookNumber;
	}
	public void setLessEqualsBookNumber(String lessEqualsBookNumber){
		this.lessEqualsBookNumber=lessEqualsBookNumber;
	}
	public String getLessEqualsBookNumber(){
		return lessEqualsBookNumber;
	}
	public void setLikeBookNumber(String likeBookNumber){
		this.likeBookNumber=likeBookNumber;
	}
	public String getLikeBookNumber(){
		return likeBookNumber;
	}
	public void setLeftLikeBookNumber(String leftLikeBookNumber){
		this.leftLikeBookNumber=likeBookNumber;
	}
	public String getLeftLikeBookNumber(){
		return leftLikeBookNumber;
	}
	public void setRightLikeBookNumber(String rightLikeBookNumber){
		this.rightLikeBookNumber=rightLikeBookNumber;
	}
	public String getRightLikeBookNumber(){
		return rightLikeBookNumber;
	}
	public void setBookBorrowNum(String bookBorrowNum){
		this.bookBorrowNum=bookBorrowNum;
	}
	public String getBookBorrowNum(){
		return bookBorrowNum;
	}
	public void setEqualsBookBorrowNum(String equalsBookBorrowNum){
		this.equalsBookBorrowNum=equalsBookBorrowNum;
	}
	public String getEqualsBookBorrowNum(){
		return equalsBookBorrowNum;
	}
	public void setIsNotNullBookBorrowNum(Boolean isNotNullBookBorrowNum){
		this.isNotNullBookBorrowNum=isNotNullBookBorrowNum;
	}
	public Boolean getIsNotNullBookBorrowNum(){
		return isNotNullBookBorrowNum;
	}
	public void setInBookBorrowNum(List<String> inBookBorrowNum){
		this.inBookBorrowNum=inBookBorrowNum;
	}
	public List<String> getInBookBorrowNum(){
		return inBookBorrowNum;
	}
	public void setNotInBookBorrowNum(List<String> notInBookBorrowNum){
		this.notInBookBorrowNum=notInBookBorrowNum;
	}
	public List<String> getNotInBookBorrowNum(){
		return notInBookBorrowNum;
	}
	public void setNoEqualsBookBorrowNum(String noEqualsBookBorrowNum){
		this.noEqualsBookBorrowNum=noEqualsBookBorrowNum;
	}
	public String getNoEqualsBookBorrowNum(){
		return noEqualsBookBorrowNum;
	}
	public void setGreaterBookBorrowNum(String greaterBookBorrowNum){
		this.greaterBookBorrowNum=greaterBookBorrowNum;
	}
	public String getGreaterBookBorrowNum(){
		return greaterBookBorrowNum;
	}
	public void setGreaterEqualsBookBorrowNum(String greaterEqualsBookBorrowNum){
		this.greaterEqualsBookBorrowNum=greaterEqualsBookBorrowNum;
	}
	public String getGreaterEqualsBookBorrowNum(){
		return greaterEqualsBookBorrowNum;
	}
	public void setLessBookBorrowNum(String lessBookBorrowNum){
		this.lessBookBorrowNum=lessBookBorrowNum;
	}
	public String getLessBookBorrowNum(){
		return lessBookBorrowNum;
	}
	public void setLessEqualsBookBorrowNum(String lessEqualsBookBorrowNum){
		this.lessEqualsBookBorrowNum=lessEqualsBookBorrowNum;
	}
	public String getLessEqualsBookBorrowNum(){
		return lessEqualsBookBorrowNum;
	}
	public void setLikeBookBorrowNum(String likeBookBorrowNum){
		this.likeBookBorrowNum=likeBookBorrowNum;
	}
	public String getLikeBookBorrowNum(){
		return likeBookBorrowNum;
	}
	public void setLeftLikeBookBorrowNum(String leftLikeBookBorrowNum){
		this.leftLikeBookBorrowNum=likeBookBorrowNum;
	}
	public String getLeftLikeBookBorrowNum(){
		return leftLikeBookBorrowNum;
	}
	public void setRightLikeBookBorrowNum(String rightLikeBookBorrowNum){
		this.rightLikeBookBorrowNum=rightLikeBookBorrowNum;
	}
	public String getRightLikeBookBorrowNum(){
		return rightLikeBookBorrowNum;
	}

}
