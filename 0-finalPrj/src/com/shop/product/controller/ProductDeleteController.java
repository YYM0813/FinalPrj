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
	@ResponseBody
	public Map<String,String> deleteProduct(int cid){
		Map<String,String>map = new HashMap<String,String>();
		String state = this.productdelservice.productDelete(cid);
		if(state =="success"){
			map.put("result", "success");
		}else{
			map.put("result", "fail");
		}
		return map;
	}
}
