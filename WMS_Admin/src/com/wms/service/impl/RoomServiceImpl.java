package com.wms.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.wms.bean.Room;
import com.wms.dao.RoomDao;
import com.wms.service.RoomService;

@Service("roomService")
public class RoomServiceImpl implements RoomService {

	@Resource
	public RoomDao roomDao;
	
	@Override
	public List<Room> queryAll() {
		// TODO Auto-generated method stub
		return roomDao.queryAll();
	}

	@Override
	public int addRoom(Room room) {
		// TODO Auto-generated method stub
		return roomDao.addRoom(room);
	}

	@Override
	public int update(Room room) {
		// TODO Auto-generated method stub
		return roomDao.update(room);
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return roomDao.delete(id);
	}

	@Override
	public Room queryById(Room room) {
		// TODO Auto-generated method stub
		return roomDao.queryById(room);
	}

	@Override
	public List<Room> queryByUser() {
		// TODO Auto-generated method stub
		return roomDao.queryByUser();
	}

}
