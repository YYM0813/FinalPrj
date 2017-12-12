package com.shop.order.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.entity.CartItem;
import com.shop.entity.Order;
import com.shop.entity.User;
import com.shop.order.service.OrderSubmitServiceImpl;

@Controller
public class OrderSubmitController {
	@Resource
	private OrderSubmitServiceImpl ossi;
	
	@RequestMapping("/submit")
	@ResponseBody
	public Map<String, String> submit(String name,String tel,String address,HttpSession session){
		Map<String,String> map = new HashMap<String,String>();
		List<CartItem> cartitem = (List<CartItem>) session.getAttribute("orderlist");
		User u = (User) session.getAttribute("loginuser");
		Order order = ossi.submitOrder(cartitem, name, tel, address, u);
		if(order!=null){
			map.put("result", "success");
			session.setAttribute("finalorder", order);
		}else{
			map.put("result", "fail");
		}
		return map;
	}
}
