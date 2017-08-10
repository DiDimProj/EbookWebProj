package com.spring.ebook.model.util.vo;

public class ReadchartVO {
	private String	genrenum, genrename, tag;
	private int		cnt, percent;
	public ReadchartVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ReadchartVO(String genrenum, String genrename, String tag, int cnt, int percent) {
		super();
		this.genrenum = genrenum;
		this.genrename = genrename;
		this.tag = tag;
		this.cnt = cnt;
		this.percent = percent;
	}
	public String getGenrenum() {
		return genrenum;
	}
	public void setGenrenum(String genrenum) {
		this.genrenum = genrenum;
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
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public int getPercent() {
		return percent;
	}
	public void setPercent(int percent) {
		this.percent = percent;
	}
	
	
	
}
