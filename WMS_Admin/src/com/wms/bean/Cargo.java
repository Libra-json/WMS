package com.wms.bean;

import java.util.Date;

/*
 * 	货物详情表cargo									
 * */

public class Cargo {
	private String c_id; // 货单
	private String c_fh; // 发货地址
	private String c_sh; // 收货地址
	private String c_fhr; // 发货人
	private String c_shr; // 收货人
	private String c_fhrdh; // 发货人电话
	private String c_shrdh; // 收货人电话
	private Date c_time;//入库时间
	private String c_rkd;//入库点
	private String c_dqzd;//当前站点
	private int c_qs;//签收状态
	private int c_state;//物品状态
	private int c_pc;//是否赔偿	
	private int c_cl;//配送车辆	
	private int c_ry;//配送人员	
	private double c_pric;//订单费用
	private double c_weight;//物品重量

	public String getC_id() {
		return c_id;
	}

	public void setC_id(String c_id) {
		this.c_id = c_id;
	}

	public String getC_fh() {
		return c_fh;
	}

	public void setC_fh(String c_fh) {
		this.c_fh = c_fh;
	}

	public String getC_sh() {
		return c_sh;
	}

	public void setC_sh(String c_sh) {
		this.c_sh = c_sh;
	}

	public String getC_fhr() {
		return c_fhr;
	}

	public void setC_fhr(String c_fhr) {
		this.c_fhr = c_fhr;
	}

	public String getC_shr() {
		return c_shr;
	}

	public void setC_shr(String c_shr) {
		this.c_shr = c_shr;
	}

	public String getC_fhrdh() {
		return c_fhrdh;
	}

	public void setC_fhrdh(String c_fhrdh) {
		this.c_fhrdh = c_fhrdh;
	}

	public String getC_shrdh() {
		return c_shrdh;
	}

	public void setC_shrdh(String c_shrdh) {
		this.c_shrdh = c_shrdh;
	}

	public Date getC_time() {
		return c_time;
	}

	public void setC_time(Date c_time) {
		this.c_time = c_time;
	}

	public String getC_rkd() {
		return c_rkd;
	}

	public void setC_rkd(String c_rkd) {
		this.c_rkd = c_rkd;
	}

	public String getC_dqzd() {
		return c_dqzd;
	}

	public void setC_dqzd(String c_dqzd) {
		this.c_dqzd = c_dqzd;
	}

	public int getC_qs() {
		return c_qs;
	}

	public void setC_qs(int c_qs) {
		this.c_qs = c_qs;
	}

	public int getC_state() {
		return c_state;
	}

	public void setC_state(int c_state) {
		this.c_state = c_state;
	}

	public int getC_pc() {
		return c_pc;
	}

	public void setC_pc(int c_pc) {
		this.c_pc = c_pc;
	}

	public int getC_cl() {
		return c_cl;
	}

	public void setC_cl(int c_cl) {
		this.c_cl = c_cl;
	}

	public int getC_ry() {
		return c_ry;
	}

	public void setC_ry(int c_ry) {
		this.c_ry = c_ry;
	}

	public double getC_pric() {
		return c_pric;
	}

	public void setC_pric(double c_pric) {
		this.c_pric = c_pric;
	}

	public double getC_weight() {
		return c_weight;
	}

	public void setC_weight(double c_weight) {
		this.c_weight = c_weight;
	}

	@Override
	public String toString() {
		return "Cargo [c_id=" + c_id + ", c_fh=" + c_fh + ", c_sh=" + c_sh + ", c_fhr=" + c_fhr + ", c_shr=" + c_shr
				+ ", c_fhrdh=" + c_fhrdh + ", c_shrdh=" + c_shrdh + ", c_time=" + c_time + ", c_rkd=" + c_rkd
				+ ", c_dqzd=" + c_dqzd + ", c_qs=" + c_qs + ", c_state=" + c_state + ", c_pc=" + c_pc + ", c_cl=" + c_cl
				+ ", c_ry=" + c_ry + ", c_pric=" + c_pric + ", c_weight=" + c_weight + "]";
	}
}
