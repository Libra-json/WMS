package com.wms.common;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


public class SecurityInterceptor extends HandlerInterceptorAdapter  {

	/** 
	* 免登入 免检查地址 
	*/ 
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler){   
		HttpSession session=request.getSession();
		Object object=session.getAttribute("currentUser");
		if(object != null && !"".equals(object.toString())){ 
			return true; 
		}else{ 
			try {
				response.sendRedirect(request.getContextPath());
			} catch (IOException e) {
				e.printStackTrace();
			}  
			return false;
		//TODO 做拦截的事情 
		}
	}

}
