package com.spring.ebook.util.vo;

public class SearchVO {
	private String searchType, searchKeyword ;

	public SearchVO() {
		super();
	}

	public SearchVO(String searchType, String searchKeyword) {
		super();
		this.searchType = searchType;
		this.searchKeyword = searchKeyword;
	}

	public String getSearchType() {
		return searchType;
	}

	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}

	public String getSearchKeyword() {
		return searchKeyword;
	}

	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}
	
	
}
