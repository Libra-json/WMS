package com.wms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wms.bean.Note;
import com.wms.bean.Test;
import com.wms.dao.ExeclTestDAO;
import com.wms.service.ExcelTsetService;

@Service("ExcelTestServiceImpl")
public class ExcelTestServiceImpl implements ExcelTsetService {
	@Resource
	private ExeclTestDAO execlTestDAO;
	
	@Override
	public List<Test> queryAll() {
		return execlTestDAO.queryAll();
	}

	@Override
	public void insertTest(Test info) {
		execlTestDAO.insertTest(info);
	}

	@Override
	public Note selectNote() {
		return execlTestDAO.selectNote();
	}

}
