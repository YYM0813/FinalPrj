package com.shop.user.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.shop.entity.User;
import com.shop.user.service.LoginUserServiceImpl;
import com.shop.user.service.UserService;

@Controller
public class LoginUserController {
	@Resource
	private LoginUserServiceImpl loginUserService;
	@Resource
	private UserService userservice;
	
	@RequestMapping(value="/login")	
	@ResponseBody
	public Map<String,String> login(String email,String password,HttpSession session) throws IOException{		
		Map<String,String> map = new HashMap<String,String>();
		User u = userservice.findByEmail(email);
		/*将用户存入session*/
		User user = (User) session.getAttribute("loginuser");
		if(user==null){
			session.setAttribute("loginuser", u);
		}		
		List<User> userlist = (ArrayList<User>)session.getAttribute("userlist");
		if(userlist==null){
			List<User> list = new ArrayList<User>();
			list.add(u);
			session.setAttribute("userlist", list);
		}
		/*检测登录信息是否正确*/
		if(email==null){
			map.put("result","null");
		}else{
			int state = loginUserService.login(email,password);		
			System.out.println(state);
			if(state == 2){
				map.put("result","admin");
			}else if(state == 1){
				map.put("result","wrong");
			}else if(state == 0){
				map.put("result","true");
			}
		}		
		return map;
	} 
}
