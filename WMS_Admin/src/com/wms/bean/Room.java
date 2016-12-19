package com.wms.bean;

/*
 * 仓库表
 * */
public class Room {
	private String r_id;	// 仓库ID
	private String r_area;  // 仓库地址
	private String r_name;	// 仓库名称
	private String r_email; //联系人邮箱
	private String r_lxr;	//(仓库)联系人	
	private String r_phone;	//联系电话	
	
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

	public String getR_email() {
		return r_email;
	}

	public void setR_email(String r_email) {
		this.r_email = r_email;
	}

	public String getR_lxr() {
		return r_lxr;
	}

	public void setR_lxr(String r_lxr) {
		this.r_lxr = r_lxr;
	}

	public String getR_phone() {
		return r_phone;
	}

	public void setR_phone(String r_phone) {
		this.r_phone = r_phone;
	}

	@Override
	public String toString() {
		return "Room [r_id=" + r_id + ", r_area=" + r_area + ", r_name=" + r_name + ", r_email=" + r_email + ", r_lxr="
				+ r_lxr + ", r_phone=" + r_phone + "]";
	}
}
