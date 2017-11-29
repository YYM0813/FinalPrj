package com.shop.cart.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.cart.service.CartAddServiceImpl;
import com.shop.entity.Cart;
import com.shop.entity.CartItem;
import com.shop.entity.Product;
import com.shop.entity.User;

@Controller
public class CartAddController {
	@Resource
	private CartAddServiceImpl cls;
	
	@RequestMapping(value="/cartadd")
	@ResponseBody
	public Map<String,String> cartlist(int pid,int shopcount,int pskuid,HttpSession session){
		System.out.println("enter");
		Map<String,String> map = new HashMap<String,String>();		
		/*查询用户是否登录*/
//		User u  = (User)session.getAttribute("loginuser");
//		if(u.getId()==pskuid){
			/*查询产品并存入session*/
			List<Cart> itemlist = new ArrayList<Cart>();
			Cart cart = cls.findProduct(pid,shopcount,pskuid);
			itemlist.add(cart);
			session.setAttribute("cart", itemlist);
			map.put("result", "yes");
//		}else{
//			map.put("result", "nologin");
//		}
		return map;
	}
}
