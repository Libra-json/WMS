package com.wms.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wms.bean.Room;
import com.wms.bean.User;
import com.wms.common.EncryptUtil;
import com.wms.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Resource
	private UserService userService;
	
	/**
	 * 用户登陆
	 * YX
	 * 2016/12/14
	 */
	@RequestMapping(value="login")
	@ResponseBody
	public Map<String, Object> login(User user,String u_yzm, HttpServletRequest request)throws Exception{
		System.out.println("======================登陆验证");
		String MD5password = EncryptUtil.md5(user.getU_pwd());
		user.setU_pwd(MD5password);
		User resultUser=userService.login(user);
		System.out.println("===========================返回结果集");
		HttpSession session=request.getSession();
		String yzm = (String)session.getAttribute("randCheckCode");
		Map<String, Object> map = new HashMap<String,Object>();
		if(!u_yzm.equalsIgnoreCase(yzm)){
			map.put("result", "fail");
			map.put("errorMsg","验证码输入错误，请重新输入！");
		}else if(resultUser==null){
			map.put("errorMsg", "账号或密码错误,请重新输入！");
			map.put("result", "fail");
		}else{
			session.removeAttribute("randCheckCode");
			session.setAttribute("currentUser", resultUser);
			map.put("result","seccuss");
		}
		
		return map;
	}
	
	/**
	 * 转到index页面
	 * @return
	 */
	@RequestMapping("/index")
	public String index(){
		return "index";
	}
	
	/**
	 * 用户退出
	 * YX
	 * 2016/12/14
	 */
	@RequestMapping("/logout")
	public String logout(HttpSession session)throws Exception{
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping(value="queryAll")
	public String queryAll(HttpServletRequest request) throws IOException, ServletException{
		List<User> user=userService.queryAll();
		request.setAttribute("user", user);
		return "pages/user/user";
	}
	
	@RequestMapping(value="addUser")
	@ResponseBody
	public Map<String, Object> addUser(User user, HttpServletRequest request){
		user.setU_role(2);
		String MD5password = EncryptUtil.md5(user.getU_pwd());
		user.setU_pwd(MD5password);
		if(user.getU_email()==null) {
			user.setU_email(null);
		}
		int i=userService.addUser(user);
		Map<String, Object> map = new HashMap<String,Object>();
		if(i==0){
			map.put("errorMsg", "添加失败");
			map.put("result", "fail");
		}else{
			map.put("result","seccuss");
		}
		return map;
	}
	
	@RequestMapping(value="userUpdate")
	@ResponseBody
	public Map<String, Object> userUpdate(User user, HttpServletRequest request){
		int i=userService.upDate(user);
		Map<String, Object> map = new HashMap<String,Object>();
		if(i==0){
			map.put("errorMsg", "修改失败！");
			map.put("result", "fail");
		}else{
			map.put("result","seccuss");
		}
		return map;
	}
	
	@RequestMapping(value="userDelete")
	@ResponseBody
	public Map<String, Object> userDelete(User user, HttpServletRequest request){
		int i=userService.delete(user.getU_id());
		Map<String, Object> map = new HashMap<String,Object>();
		if(i==0){
			map.put("errorMsg", "删除失败！");
			map.put("result", "fail");
		}else{
			map.put("result","seccuss");
		}
		return map;
	}
	
	@RequestMapping(value = "/determineRoom")
	public String determineRoom(@RequestParam("id") String id,@RequestParam("name") String name,HttpServletRequest req) {
		Room room=new Room();
		room.setR_id(id);
		room.setR_name(name);
		req.setAttribute("room", room);
		return "pages/user/addUser";
	}
}
