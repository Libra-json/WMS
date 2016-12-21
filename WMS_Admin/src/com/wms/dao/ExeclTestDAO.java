package com.wms.dao;

import java.util.List;

import com.wms.bean.Note;
import com.wms.bean.Test;

public interface ExeclTestDAO {

	List<Test> queryAll();

	void insertTest(Test info);

	Note selectNote();

}
