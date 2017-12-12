package com.shop.order.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shop.entity.Order;
import com.shop.order.service.OrderShowServiceImpl;

@Controller
public class OrderShowController {
	@Resource
	private OrderShowServiceImpl service;
	
	@RequestMapping("/ordershow")
	public String OrderShow(@RequestParam (name="id") int id,HttpSession session){
		List<Order> orderlist= service.findOrderById(id);
	}
	
}
