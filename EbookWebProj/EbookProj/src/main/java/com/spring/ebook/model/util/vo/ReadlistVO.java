package com.spring.ebook.model.util.vo;

public class ReadlistVO {
	private String	userid, readdate, title, author, genrename, tag;
	private int		likecnt;
	private String	booknum, genrenum;
	public ReadlistVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ReadlistVO(String userid, String readdate, String title, String author, String genrename, String tag,
			int likecnt, String booknum, String genrenum) {
		super();
		this.userid = userid;
		this.readdate = readdate;
		this.title = title;
		this.author = author;
		this.genrename = genrename;
		this.tag = tag;
		this.likecnt = likecnt;
		this.booknum = booknum;
		this.genrenum = genrenum;
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
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getGenrename() {
		return genrename;
	}
	public void setGenrename(String genrename) {
		this.genrename = genrename;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	public int getLikecnt() {
		return likecnt;
	}
	public void setLikecnt(int likecnt) {
		this.likecnt = likecnt;
	}
	public String getBooknum() {
		return booknum;
	}
	public void setBooknum(String booknum) {
		this.booknum = booknum;
	}
	public String getGenrenum() {
		return genrenum;
	}
	public void setGenrenum(String genrenum) {
		this.genrenum = genrenum;
	}
	
	
}

