package com.wms.dao;

import java.util.List;

import com.wms.bean.Room;

public interface RoomDao {
	
	public List<Room> queryAll();
	
	public int addRoom(Room room);
	
	public int update(Room room);
	
	public int delete(String id);
	
	public Room queryById(Room room);
	
	List<Room> queryByUser();
}
