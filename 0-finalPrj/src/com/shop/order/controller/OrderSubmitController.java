package com.shop.order.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.entity.Address;
import com.shop.entity.CartItem;
import com.shop.entity.Order;
import com.shop.entity.User;
import com.shop.order.service.OrderSubmitServiceImpl;

@Controller
public class OrderSubmitController {
	@Resource
	private OrderSubmitServiceImpl ossi;
	
	
	@RequestMapping(value="/suborder")
	@ResponseBody
	public Map<String, String> submitorder(int usid,String cid,HttpSession session){
		Map<String,String> map = new HashMap<String,String>();
		
		User u = (User) session.getAttribute("loginuser");
		Address address = ossi.findOrderById(usid);
		Order order = ossi.submitOrder(cid,address,u);
		if(order!=null){
			session.setAttribute("finalorder", order);
			map.put("result", "success");
		}else{
			map.put("result", "fail");
		}
		return map;
	}
}
