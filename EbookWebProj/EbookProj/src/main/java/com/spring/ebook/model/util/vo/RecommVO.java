package com.spring.ebook.model.util.vo;

public class RecommVO {

	private int booknum;
	private String title, gn;

	public RecommVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public RecommVO(int booknum, String title, String gn) {
		super();
		this.booknum = booknum;
		this.title = title;
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

	public String getGn() {
		return gn;
	}

	public void setGn(String gn) {
		this.gn = gn;
	}

}
