package com.shop.product.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shop.entity.Product;
import com.shop.product.service.ProductFlavorServiceImpl;

@Controller
@RequestMapping("/product")
public class ProductFlavorContorller {
	@Resource
	private ProductFlavorServiceImpl pdsi;
	
	@RequestMapping(value="/flavor")
	public String distinctFlavor(@RequestParam(name="id") int id,HttpSession session){
		List<Product> list = new ArrayList<Product>();
		list = pdsi.findProByFlavorId(id);
		session.setAttribute("scalelist", list);
		return "scale";
		
	}
	
}
