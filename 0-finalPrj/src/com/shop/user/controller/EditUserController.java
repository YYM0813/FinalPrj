package com.shop.user.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.entity.User;
import com.shop.user.service.EditUserServiceImpl;

@Controller
public class EditUserController {
	@Resource
	private EditUserServiceImpl editser;
	
	@RequestMapping("/edit")
	@ResponseBody
	public Map<String,String> EditUser(String name,Integer sex,String dis,HttpSession session){
		int line =0;
		User u = (User) session.getAttribute("loginuser");
		int uid = u.getId();
		Map<String,String> map = new HashMap<String,String>();
		if(!(null==name)){
			line = editser.editUserName(name, uid);			
		}
		if(!(null==sex)){
			line = editser.editUserSex(sex, uid);
		}
		if(!(null==dis)){
			line = editser.editUserDis(dis, uid);
		}
		if(line == 1){
			map.put("result", "success");
		}else{
			map.put("result", "fail");
		}
		return map;
	}
}
