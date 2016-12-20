package com.wms.bean;

public class Test {
	private String id;
	private String name;
	private String banji;
	private String bscj;
	private String jscj;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBanji() {
		return banji;
	}

	public void setBanji(String banji) {
		this.banji = banji;
	}

	public String getBscj() {
		return bscj;
	}

	public void setBscj(String bscj) {
		this.bscj = bscj;
	}

	public String getJscj() {
		return jscj;
	}

	public void setJscj(String jscj) {
		this.jscj = jscj;
	}

	@Override
	public String toString() {
		return "Test [id=" + id + ", name=" + name + ", banji=" + banji + ", bscj=" + bscj + ", jscj=" + jscj + "]";
	}
}
