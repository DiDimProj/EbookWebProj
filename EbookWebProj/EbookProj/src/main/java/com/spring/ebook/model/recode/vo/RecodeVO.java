package com.spring.ebook.model.recode.vo;

public class RecodeVO {
	private String userid, readdate;
	private int booknum;

	public RecodeVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public RecodeVO(String userid, String readdate, int booknum) {
		super();
		this.userid = userid;
		this.readdate = readdate;
		this.booknum = booknum;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getReaddate() {
		return readdate;
	}

	public void setReaddate(String readdate) {
		this.readdate = readdate;
	}

	public int getBooknum() {
		return booknum;
	}

	public void setBooknum(int booknum) {
		this.booknum = booknum;
	}

}
