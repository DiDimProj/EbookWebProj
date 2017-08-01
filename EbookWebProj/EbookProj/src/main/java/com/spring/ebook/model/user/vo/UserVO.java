package com.spring.ebook.model.user.vo;

public class UserVO {
	private String	userid, name, password;
	private int		age;
	private String	phone, genrenum, admin;
	public UserVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserVO(String userid, String name, String password, int age, String phone, String genrenum, String admin) {
		super();
		this.userid = userid;
		this.name = name;
		this.password = password;
		this.age = age;
		this.phone = phone;
		this.genrenum = genrenum;
		this.admin = admin;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getGenrenum() {
		return genrenum;
	}
	public void setGenrenum(String genrenum) {
		this.genrenum = genrenum;
	}
	public String getAdmin() {
		return admin;
	}
	public void setAdmin(String admin) {
		this.admin = admin;
	}
}
