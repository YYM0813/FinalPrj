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

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.shop.entity.User;
import com.shop.user.service.RegistUserServiceImpl;
import com.shop.user.service.UserService;

@Controller
public class RegisterUserController {
	@Resource
	private RegistUserServiceImpl registUserService;
	
	
	@RequestMapping(value="/register")
	@ResponseBody
	public Map<String,String> register(String name,String email,String password,String confirmpwd,HttpSession session) throws IOException {
		Map<String,String> map = new HashMap<String,String>();		
		User u = this.registUserService.regist(name, email, password);
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
		/*返回Jason*/
		map.put("result", "true");
		return map;
	}
}
