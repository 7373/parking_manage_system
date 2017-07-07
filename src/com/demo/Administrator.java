package com.demo;

import java.io.Serializable;

public class Administrator implements Serializable {
	private String userName;
	private String passWord;

	public Administrator() {
		super();
	}

	public Administrator(String userName, String passWord) {
		super();
		this.userName = userName;
		this.passWord = passWord;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

}
