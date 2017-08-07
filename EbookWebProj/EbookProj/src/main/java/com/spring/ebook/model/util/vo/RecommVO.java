package com.spring.ebook.model.util.vo;

public class RecommVO {

	private int booknum;
	private String title, genrenum;

	public RecommVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public RecommVO(int booknum, String title, String genrenum) {
		super();
		this.booknum = booknum;
		this.title = title;
		this.genrenum = genrenum;
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

	public String getGenrenum() {
		return genrenum;
	}

	public void setGenrenum(String genrenum) {
		this.genrenum = genrenum;
	}

}
