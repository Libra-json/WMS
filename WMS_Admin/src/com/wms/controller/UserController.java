package com.wms.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	public Map<String, Object> login(User user,HttpServletRequest request)throws Exception{
		System.out.println("======================登陆验证");
		String MD5password = EncryptUtil.md5(user.getU_pwd());
		user.setU_pwd(MD5password);
		User resultUser=userService.login(user);
		System.out.println("===========================返回结果集");
		HttpSession session=request.getSession();
		
		Map<String, Object> map = new HashMap<String,Object>();
		if(resultUser==null){
			map.put("errorMsg", "账号或密码错误,请重新输入！");
			map.put("result", "fail");
		}else{
			session.setAttribute("currentUser", resultUser);
			map.put("result","seccuss");
		}
		
		return map;
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
}
