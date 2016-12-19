package com.wms.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wms.bean.Room;
import com.wms.service.RoomService;

@Controller
@RequestMapping("/room")
public class RoomController {
	
	@Resource
	private RoomService roomService;
	
	//进入详情页面
	@RequestMapping(value = "/roomDetails")
	public String roomDetails(Room room,HttpServletRequest req) {
		Room r = roomService.queryById(room);
		req.setAttribute("r", r);
		return "pages/roomDetails";
	}
	
	//进入修改页面
	@RequestMapping(value = "/roomEtid")
	public String roomEdit(Room room,HttpServletRequest req) {
		Room r = roomService.queryById(room);
		req.setAttribute("r", r);
		return "pages/roomEdit";
	}
	
	@RequestMapping(value="queryAll")
	public String queryAll(HttpServletRequest request) throws IOException, ServletException{
		List<Room> room=roomService.queryAll();
		request.setAttribute("room", room);
		return "pages/room";
	}
	
	@RequestMapping(value="addRoom")
	@ResponseBody
	public Map<String, Object> addRoom(Room room, HttpServletRequest request){
		int i=roomService.addRoom(room);
		Map<String, Object> map = new HashMap<String,Object>();
		System.out.println(i+"+++++");
		if(i==0){
			map.put("errorMsg", "添加失败");
			map.put("result", "fail");
		}else{
			map.put("result","seccuss");
		}
		List<Room> r=roomService.queryAll();
		request.setAttribute("r",r);
		return map;
	}
	
	@RequestMapping(value="roomUpdate")
	@ResponseBody
	public Map<String, Object> roomUpdate(Room room, HttpServletRequest request){
		int i=roomService.update(room);
		Map<String, Object> map = new HashMap<String,Object>();
		if(i==0){
			map.put("errorMsg", "修改失败！");
			map.put("result", "fail");
		}else{
			map.put("result","seccuss");
		}
		return map;
	}
	
	@RequestMapping(value="roomDelete")
	@ResponseBody
	public Map<String, Object> roomDelete(Room room){
		int i=roomService.delete(room.getR_id());
		Map<String, Object> map = new HashMap<String,Object>();
		if(i==0){
			map.put("errorMsg", "删除失败！");
			map.put("result", "fail");
		}else{
			map.put("result","seccuss");
		}
		return map;
	}
	
	@RequestMapping(value="queryByUser")
	@ResponseBody
	public Map<String, Object> queryByUser(){
		List<Room> i=roomService.queryByUser();
		Map<String, Object> map = new HashMap<String,Object>();
		if(i.isEmpty()){
			map.put("errorMsg", "仓库管理员已满或没有仓库！");
			map.put("result", "fail");
		}else{
			map.put("result","seccuss");
		}
		return map;
	}
	
	@RequestMapping(value="queryByRoom")
	public String queryByRoom(HttpServletRequest request){
		List<Room> room=roomService.queryByUser();
		request.setAttribute("room", room);
		return "pages/user/chooseRoom";
	}
}
