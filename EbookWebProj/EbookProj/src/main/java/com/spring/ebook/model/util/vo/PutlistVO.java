package com.spring.ebook.model.util.vo;

public class PutlistVO {
	private String	userid, putdate, title, author, genrename, tag;
	private int		likecnt;
	public PutlistVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PutlistVO(String userid, String putdate, String title, String author, String genrename, String tag,
			int likecnt) {
		super();
		this.userid = userid;
		this.putdate = putdate;
		this.title = title;
		this.author = author;
		this.genrename = genrename;
		this.tag = tag;
		this.likecnt = likecnt;
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
	
}
