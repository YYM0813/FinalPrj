package com.shop.product.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.shop.entity.Flavor;
import com.shop.entity.Product;
import com.shop.entity.Size;
import com.shop.product.service.ProductShowServiceImpl;

@Controller
@RequestMapping("/product")
public class ProductShowController {
	@Resource
	private ProductShowServiceImpl productshowservice;
	
	@RequestMapping(value="/show",method=RequestMethod.GET)
	public String showProduct(@RequestParam("id")Integer id,@RequestParam("typeid")Integer typeid,HttpSession session){
		List<Size> slist= new ArrayList<Size>();
		List<Flavor> flist= new ArrayList<Flavor>();
		
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
		slist = productshowservice.findSizeById(id);
		flist = productshowservice.findFlavorById(id);
		session.setAttribute("pro", pro);
		session.setAttribute("sizelist", slist);
		session.setAttribute("flavorlist", flist);
		return "single";
	}
}
