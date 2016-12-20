package com.wms.service;

import java.util.List;

import com.wms.bean.Test;

public interface ExcelTsetService {

	List<Test> queryAll();

	void insertTest(Test info);
}
