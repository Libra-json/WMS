package com.wms.bean;

/*
 * 仓库表
 * */
public class Room {
	private String r_id; // 仓库ID
	private String r_area; // 仓库地址
	private String r_name; // 仓库名称

	public String getR_id() {
		return r_id;
	}

	public void setR_id(String r_id) {
		this.r_id = r_id;
	}

	public String getR_area() {
		return r_area;
	}

	public void setR_area(String r_area) {
		this.r_area = r_area;
	}

	public String getR_name() {
		return r_name;
	}

	public void setR_name(String r_name) {
		this.r_name = r_name;
	}

	@Override
	public String toString() {
		return "Room [r_id=" + r_id + ", r_area=" + r_area + ", r_name=" + r_name + "]";
	}
}
