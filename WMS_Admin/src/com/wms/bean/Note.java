package com.wms.bean;

public class Note {
	private int id;
	private String username;
	private String password;
	private String apikey;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getApikey() {
		return apikey;
	}

	public void setApikey(String apikey) {
		this.apikey = apikey;
	}

	@Override
	public String toString() {
		return "Note [id=" + id + ", username=" + username + ", password=" + password + ", apikey=" + apikey + "]";
	}
}
