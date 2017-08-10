package com.spring.ebook.model.genre.vo;

public class GenreVO {
	private String genrenum, genrename, tag;

	public GenreVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public GenreVO(String genrenum, String genrename, String tag) {
		super();
		this.genrenum = genrenum;
		this.genrename = genrename;
		this.tag = tag;
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
	


}
