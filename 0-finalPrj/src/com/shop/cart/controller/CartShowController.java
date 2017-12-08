package com.shop.cart.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shop.entity.Cart;
import com.shop.entity.CartItem;
import com.shop.entity.User;

@Controller
public class CartShowController {
	@RequestMapping(value="/showcart")
	public String findCartById(HttpSession session){
		List<CartItem> cartlist = new ArrayList<CartItem>();
		Cart cart = (Cart) session.getAttribute("cart");
		Iterator i=cart.container.values().iterator();
		while(i.hasNext()){
			CartItem ci=(CartItem)i.next();
			cartlist.add(ci);		
		}		
		session.setAttribute("cartItem", cartlist);
		return "car";
	}
}
