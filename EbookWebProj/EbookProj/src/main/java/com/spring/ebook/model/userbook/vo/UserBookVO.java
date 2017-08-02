package com.spring.ebook.model.userbook.vo;

public class UserBookVO {

	private 	String	 userid, putdate;
	private 	int 	 booknum;
	public UserBookVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserBookVO(String userid, String putdate, int booknum) {
		super();
		this.userid = userid;
		this.putdate = putdate;
		this.booknum = booknum;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPutdate() {
		return putdate;
	}
	public void setPutdate(String putdate) {
		this.putdate = putdate;
	}
	public int getBooknum() {
		return booknum;
	}
	public void setBooknum(int booknum) {
		this.booknum = booknum;
	}
	
	
	
}
