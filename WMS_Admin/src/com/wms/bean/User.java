package com.wms.bean;

/**
 * 用户基本信息
 *
 */
public class User {

	private String u_id; // id
	private String u_name; // 用户名
	private String u_pwd; // 密码
	private String u_sex; // 性别
	private int u_age; // 年龄
	private String u_phone; // 电话号码
	private int u_role; // 角色
	private String u_cardid; // 身份证号码
	private String u_email; // 邮箱
	private String u_ck;//仓库
	private int u_state;//配送员状态

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}

	public String getU_name() {
		return u_name;
	}

	public void setU_name(String u_name) {
		this.u_name = u_name;
	}

	public String getU_pwd() {
		return u_pwd;
	}

	public void setU_pwd(String u_pwd) {
		this.u_pwd = u_pwd;
	}

	public String getU_sex() {
		return u_sex;
	}

	public void setU_sex(String u_sex) {
		this.u_sex = u_sex;
	}

	public int getU_age() {
		return u_age;
	}

	public void setU_age(int u_age) {
		this.u_age = u_age;
	}

	public String getU_phone() {
		return u_phone;
	}

	public void setU_phone(String u_phone) {
		this.u_phone = u_phone;
	}

	public int getU_role() {
		return u_role;
	}

	public void setU_role(int u_role) {
		this.u_role = u_role;
	}

	public String getU_cardid() {
		return u_cardid;
	}

	public void setU_cardid(String u_cardid) {
		this.u_cardid = u_cardid;
	}

	public String getU_email() {
		return u_email;
	}

	public void setU_email(String u_email) {
		this.u_email = u_email;
	}

	public String getU_ck() {
		return u_ck;
	}

	public void setU_ck(String u_ck) {
		this.u_ck = u_ck;
	}

	public int getU_state() {
		return u_state;
	}

	public void setU_state(int u_state) {
		this.u_state = u_state;
	}

	@Override
	public String toString() {
		return "User [u_id=" + u_id + ", u_name=" + u_name + ", u_pwd=" + u_pwd + ", u_sex=" + u_sex + ", u_age="
				+ u_age + ", u_phone=" + u_phone + ", u_role=" + u_role + ", u_cardid=" + u_cardid + ", u_email="
				+ u_email + ", u_ck=" + u_ck + ", u_state=" + u_state + "]";
	}
}
