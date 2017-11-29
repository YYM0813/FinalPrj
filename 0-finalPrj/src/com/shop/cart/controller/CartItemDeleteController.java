package com.shop.cart.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shop.cart.service.CartItemDeleteServiceImpl;

@Controller
public class CartItemDeleteController {
	@Resource
	private CartItemDeleteServiceImpl cids;
	
	@RequestMapping(value="/deleteitem")
	public String deleteProduct(int cid){
		String state = this.cids.deleteItem(cid);
		if(state.equals("success")){
			return "car";
		}else{
			return null;
		}
	}
}
