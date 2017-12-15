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
import org.springframework.web.bind.annotation.ResponseBody;
import com.shop.entity.Cart;
import com.shop.entity.CartItem;
import com.shop.entity.Product;
@Controller
public class CartItemDeleteController {
	@RequestMapping(value="/deleteitem")
	@ResponseBody
	public Map<String,String> deleteProduct(Integer pid,int count,HttpSession session){
		Map<String,String> map = new HashMap<String,String>();
		List<CartItem> cartlist = new ArrayList<CartItem>();
		count = count-1;		
		
		Cart cart = (Cart) session.getAttribute("cart");
		Iterator<CartItem> i=cart.container.values().iterator();
		
		while(i.hasNext()){
			CartItem ci=i.next();
			if(ci.getProduct().getId()==pid){
				if(count > 0){
					ci.setCount(count);
					cartlist.add(ci);	
				}else{
					cart.container.remove(pid);
					
				}
			}				
		}		
		session.setAttribute("cartItem", cartlist);
		map.put("result", "ok");
		return map;
	}
}
