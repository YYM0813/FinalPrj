package com.shop.cart.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.entity.Address;
import com.shop.entity.Cart;
import com.shop.entity.CartItem;
import com.shop.entity.User;
import com.shop.product.dao.ProductShowDaoImpl;

@Controller
public class CartOrderConfirmController {
	@Resource
	private ProductShowDaoImpl psdl;
	
	@RequestMapping(value="/orderconfirm")
	@ResponseBody
	public Map<String,String> orderConfirm(String string,HttpSession session){
		Map<String,String> map = new HashMap<String,String>();
		List<CartItem> orderlist = new ArrayList<CartItem>();
		List<Address> addresslist = new ArrayList<Address>();
		Cart cart = (Cart) session.getAttribute("cart");
		Iterator i=cart.container.values().iterator();
		int pid = 0;
		String [] str = string.split(" ");
		for(int a = 0;a<str.length;a++){
			Object[] obj =str[a].split(",");
			pid = Integer.parseInt(obj[0].toString());
			while(i.hasNext()){
				CartItem ci=(CartItem)i.next();
				if(ci.getProduct().getId()==pid){
					orderlist.add(ci);
				}
			}			
		}
		session.setAttribute("orderlist", orderlist);
		/*PS:查出用户地址*/
		User u = (User)session.getAttribute("loginuser");
		Set<Address>address = u.getAddressmap();
		Iterator it = address.iterator();
		while(it.hasNext()){
			Address a =  (Address) it.next();
			addresslist.add(a);
		}		
		session.setAttribute("addresslist", addresslist);
		map.put("result", "success");
		return map;
		 
	}
}
