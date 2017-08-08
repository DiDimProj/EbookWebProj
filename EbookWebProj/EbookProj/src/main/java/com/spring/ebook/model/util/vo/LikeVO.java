package com.spring.ebook.model.util.vo;

public class LikeVO {
	int booknum;
	String title, likecnt, gn;
	public LikeVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public LikeVO(int booknum, String title, String likecnt, String gn) {
		super();
		this.booknum = booknum;
		this.title = title;
		this.likecnt = likecnt;
		this.gn = gn;
	}
	public int getBooknum() {
		return booknum;
	}
	public void setBooknum(int booknum) {
		this.booknum = booknum;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getLikecnt() {
		return likecnt;
	}
	public void setLikecnt(String likecnt) {
		this.likecnt = likecnt;
	}
	public String getGn() {
		return gn;
	}
	public void setGn(String gn) {
		this.gn = gn;
	}
	
	
}
