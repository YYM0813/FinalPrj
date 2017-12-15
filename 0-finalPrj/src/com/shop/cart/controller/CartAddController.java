package com.shop.cart.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.cart.service.CartAddServiceImpl;
import com.shop.entity.Cart;
import com.shop.entity.Flavor;
import com.shop.entity.Product;
import com.shop.entity.Size;
import com.shop.entity.User;

@Controller
public class CartAddController {
	@Resource
	private CartAddServiceImpl cls;
	
	@RequestMapping(value="/cartadd")
	@ResponseBody
	public Map<String,String> cartlist(int pid,int shopcount,String pskuid,HttpSession session){
		Map<String,String> map = new HashMap<String,String>();	
		String[]str = pskuid.split(",");
		String size = str[0];
		String flavor = str[1];
		/*查询用户是否登录*/
		User u  = (User)session.getAttribute("loginuser");
		if(u != null){
			/*查询产品并存入session*/
			Product pro = cls.findProduct(pid);
			Size sizes = cls.findSizeByName(size);
			Flavor flavors = cls.findFlavorByName(flavor);
			Cart c = (Cart) session.getAttribute("cart");
			if(c == null){
				c = new Cart();
			}
			c.AddCart(pro,sizes,flavors,shopcount);
			session.setAttribute("cart", c);
			map.put("result", "yes");
		}else{
			map.put("result", "nologin");
		}
		return map;
	}
}
