package com.shop.product.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.product.service.ProductDeleteServiceImpl;

@Controller
public class ProductDeleteController {
	@Resource
	private ProductDeleteServiceImpl productdelservice;
	
	@RequestMapping(value="/deleteproduct")
	public void deleteProduct(int cid){
		String state = this.productdelservice.productDelete(cid);
		
	}
}
