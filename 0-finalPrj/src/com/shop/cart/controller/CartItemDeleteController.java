package com.shop.cart.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.cart.service.CartItemDeleteServiceImpl;
import com.shop.entity.CartItem;

@Controller
public class CartItemDeleteController {
	@Resource
	private CartItemDeleteServiceImpl cids;
	
	@RequestMapping(value="/deleteitem")
	@ResponseBody
	public Map<String,String> deleteProduct(int cid,HttpSession session){
		Map<String,String>map = new HashMap<String,String>();
		String state = this.cids.deleteItem(cid);
		if(state.equals("success")){
			map.put("result", "success");
		}else{
			map.put("result", "fail");
		}
		return map;
	}
}
