package com.wms.bean;

import java.util.Date;

public class Lookup {
	private int l_id;
	private String l_cargo;
	private String l_room;
	private Date l_time;

	public int getL_id() {
		return l_id;
	}

	public void setL_id(int l_id) {
		this.l_id = l_id;
	}

	public String getL_cargo() {
		return l_cargo;
	}

	public void setL_cargo(String l_cargo) {
		this.l_cargo = l_cargo;
	}

	public String getL_room() {
		return l_room;
	}

	public void setL_room(String l_room) {
		this.l_room = l_room;
	}

	public Date getL_time() {
		return l_time;
	}

	public void setL_time(Date l_time) {
		this.l_time = l_time;
	}

	@Override
	public String toString() {
		return "Lookup [l_id=" + l_id + ", l_cargo=" + l_cargo + ", l_room=" + l_room + ", l_time=" + l_time + "]";
	}
}
