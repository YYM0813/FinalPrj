package com.shop.product.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.shop.entity.Product;
import com.shop.product.service.ProductShowServiceImpl;

@Controller
@RequestMapping("/product")
public class ProductShowController {
	@Resource
	private ProductShowServiceImpl productshowservice;
	
	@RequestMapping(value="/show",method=RequestMethod.GET)
	public String showProduct(@RequestParam("id")Integer id,@RequestParam("typeid")Integer typeid,HttpSession session){
		if(typeid.equals(1)){
			Object list =session.getAttribute("list");
			session.setAttribute("typeone", list);
		}else if(typeid.equals(2)){
			Object list =session.getAttribute("afternoonlist");
			session.setAttribute("typeone", list);
		}else if(typeid.equals(3)){
			Object list =session.getAttribute("giftlist");
			session.setAttribute("typeone", list);
		}
		Product pro = productshowservice.showProduct(id);
		session.setAttribute("pro", pro);
		return "single";
	}
}
