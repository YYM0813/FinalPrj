package com.shop.product.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shop.entity.Product;
import com.shop.product.service.ProductSizeServiceImpl;

@Controller
@RequestMapping("/product")
public class ProductSizeController {
	@Resource
	private ProductSizeServiceImpl pssi;
	
	@RequestMapping(value="/size")
	public String distinctFlavor(@RequestParam(name="id") int id,HttpSession session){
		List<Product> list = new ArrayList<Product>();
		list = pssi.findProductById(id);
		session.setAttribute("scalelist", list);
		return "scale";
		
	}
}
