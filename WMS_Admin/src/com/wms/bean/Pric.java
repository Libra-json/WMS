package com.wms.bean;

/*
 * 定价表
 * */

public class Pric {
	private int p_id;//ID
	private String p_room;//所属仓库	
	private int p_state;//状态	
	private String p_are;//收件地区	
	private double p_start;//起步价	
	private double p_weight;//限制重量	
	private double p_perc;//百分率	
	
	public int getP_id() {
		return p_id;
	}

	public void setP_id(int p_id) {
		this.p_id = p_id;
	}

	public String getP_room() {
		return p_room;
	}

	public void setP_room(String p_room) {
		this.p_room = p_room;
	}

	public int getP_state() {
		return p_state;
	}

	public void setP_state(int p_state) {
		this.p_state = p_state;
	}

	public String getP_are() {
		return p_are;
	}

	public void setP_are(String p_are) {
		this.p_are = p_are;
	}

	public double getP_start() {
		return p_start;
	}

	public void setP_start(double p_start) {
		this.p_start = p_start;
	}

	public double getP_weight() {
		return p_weight;
	}

	public void setP_weight(double p_weight) {
		this.p_weight = p_weight;
	}

	public double getP_perc() {
		return p_perc;
	}

	public void setP_perc(double p_perc) {
		this.p_perc = p_perc;
	}

	@Override
	public String toString() {
		return "Pric [p_id=" + p_id + ", p_room=" + p_room + ", p_state=" + p_state + ", p_are=" + p_are + ", p_start="
				+ p_start + ", p_weight=" + p_weight + ", p_perc=" + p_perc + "]";
	}
}
