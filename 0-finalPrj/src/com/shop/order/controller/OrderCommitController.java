package com.shop.order.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.portlet.bind.annotation.ResourceMapping;

import com.shop.entity.User;
import com.shop.order.service.OrderCommitServiceImpl;

@Controller
public class OrderCommitController {
	@Resource
	private OrderCommitServiceImpl ocsi;
	
	@ResourceMapping("/cartitemconfirm")
	@ResponseBody
	public Map<String,String> addOrder(String string,HttpSession session){
		Map<String,String> map = new HashMap<String,String>();
		List<Integer> proid = new ArrayList<Integer>();
		String[]pid = string.split(",");
		for(String i : pid){
			proid.add(Integer.getInteger(i));
		}
		session.getAttribute("cart");
		User u = (User) session.getAttribute("loginuser");
		int uid = u.getId();

			
		return map;
		
	}
	
}
