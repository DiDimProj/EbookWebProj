package com.spring.ebook.model.book.vo;

public class BookVO {
	private int booknum ;
	private String title, genrenum, author, content ;
	private int likecnt ;
	
	public BookVO() {
		super();
	}
	
	public BookVO(int booknum, String title, String genrenum, String author, String content, int likecnt) {
		super();
		this.booknum = booknum;
		this.title = title;
		this.genrenum = genrenum;
		this.author = author;
		this.content = content;
		this.likecnt = likecnt;
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

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getLikecnt() {
		return likecnt;
	}

	public void setLikecnt(int likecnt) {
		this.likecnt = likecnt;
	}
	
}
