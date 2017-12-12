package com.shop.user.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.entity.User;
import com.shop.user.service.UserPasswordServiceImpl;

@Controller
public class UserPasswordController {
	@Resource
	private UserPasswordServiceImpl service;
	
	@RequestMapping
	@ResponseBody
	public Map<String,String> repwd(String oldpwd,String newpwd,HttpSession session){
		Map<String,String> map = new HashMap<String,String>();
		User user = (User)session.getAttribute("loginuser");
		int id = user.getId();
		String password = user.getPassword();
		if(password.equals(oldpwd)){
			int line = service.repwd(newpwd, id);
			if(line == 1){
				map.put("result","success");
			}else{
			map.put("result", "fail");
			}
		}	
		return map;
	}
}

