package edu.cuc.culturaldev.bean;

import java.io.Serializable;
import java.util.*;

/**
 * 
 * @author Guodang Zuo
 * @since 1.0
 *
 */
public class BookInfo implements Serializable{
  	public BookInfo() {
  	}
	/**  主键**/
	private String bookId;
	/**  **/
	private String bookName;
	/**  **/
	private String bookPress;
	/**  **/
	private String bookAuthor;
	/**  **/
	private String bookKeyword;
	/**  **/
	private String bookNumber;
	/**  **/
	private String bookBorrowNum;
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
	public void setBookPress(String bookPress){
		this.bookPress=bookPress;
	}
	public String getBookPress(){
		return bookPress;
	}
	public void setBookAuthor(String bookAuthor){
		this.bookAuthor=bookAuthor;
	}
	public String getBookAuthor(){
		return bookAuthor;
	}
	public void setBookKeyword(String bookKeyword){
		this.bookKeyword=bookKeyword;
	}
	public String getBookKeyword(){
		return bookKeyword;
	}
	public void setBookNumber(String bookNumber){
		this.bookNumber=bookNumber;
	}
	public String getBookNumber(){
		return bookNumber;
	}
	public void setBookBorrowNum(String bookBorrowNum){
		this.bookBorrowNum=bookBorrowNum;
	}
	public String getBookBorrowNum(){
		return bookBorrowNum;
	}
}
