package com.zjnu.entity;

public class User {
	private Integer id;
	private String account;
	private String password;
	private String username;
	private Integer role;//0表示普通用户，1表示管理员
	
	public User(Integer id, String account, String password, String username, Integer role) {
		super();
		this.id = id;
		this.account = account;
		this.password = password;
		this.username = username;
		this.role = role;
	}

	public User(Integer id, String account, String password) {
		super();
		this.id = id;
		this.account = account;
		this.password = password;
	}
	
	
	public User(Integer id, String account, String password, Integer role) {
		super();
		this.id = id;
		this.account = account;
		this.password = password;
		this.role = role;
	}

	public User(String account, String password, Integer role) {
		super();
		this.account = account;
		this.password = password;
		this.role = role;
	}

	public User(Integer id, String password) {
		super();
		this.id = id;
		this.password = password;
	}
	public User(String account, String password) {
		super();
		this.account = account;
		this.password = password;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Integer getRole() {
		return role;
	}

	public void setRole(Integer role) {
		this.role = role;
	}

	public User() {
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public String toString() {
		return "User [id=" + id + ", account=" + account + ", password=" + password + "]";
	}
}
