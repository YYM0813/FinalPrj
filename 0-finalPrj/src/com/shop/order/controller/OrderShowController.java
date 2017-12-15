package com.shop.order.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shop.entity.CartItem;
import com.shop.entity.Order;
import com.shop.entity.User;
import com.shop.order.service.OrderShowServiceImpl;

@Controller
public class OrderShowController {
	@Resource
	private OrderShowServiceImpl service;
	
	@RequestMapping("/ordershow")
	public String OrderShow(@RequestParam (name="id") int id,HttpSession session){
		List<CartItem>clist = new ArrayList<CartItem>();
		List<Order> orderlist= service.findOrderById(id);
		session.setAttribute("userorder", orderlist);
		for(Order o:orderlist){
			String s = o.getCartitemid();
			if(null!=s){
				clist = service.ordershow(s);
				for(CartItem c:clist){
					System.out.println(c.getProduct().getName());
				}
				session.setAttribute("finalcart", clist);
			}
		}
		return "myOrder";
	}
	
}
