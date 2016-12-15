package com.wms.bean;

public class Car {
	private int car_id;//车辆id
	private int car_state;//车辆状态
	private String car_number; //车牌号
	private String car_zd; // 车辆目的地

	public int getCar_id() {
		return car_id;
	}

	public void setCar_id(int car_id) {
		this.car_id = car_id;
	}

	public int getCar_state() {
		return car_state;
	}

	public void setCar_state(int car_state) {
		this.car_state = car_state;
	}

	public String getCar_number() {
		return car_number;
	}

	public void setCar_number(String car_number) {
		this.car_number = car_number;
	}

	public String getCar_zd() {
		return car_zd;
	}

	public void setCar_zd(String car_zd) {
		this.car_zd = car_zd;
	}

	@Override
	public String toString() {
		return "Car [car_id=" + car_id + ", car_state=" + car_state + ", car_number=" + car_number + ", car_zd="
				+ car_zd + "]";
	}
}
