package com.shop.product.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.shop.entity.Product;
import com.shop.product.service.ProductListServiceImpl;
import com.sun.xml.internal.ws.api.streaming.XMLStreamReaderFactory.Default;

@Controller
@RequestMapping("/product")
public class ProductListController {
	@Resource
	private ProductListServiceImpl productlistservice;
	
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public String findAllByType(@RequestParam("typeid")Integer id,HttpSession session){
		List<Product> list=new ArrayList<Product>();
		if(id==0){
			list = productlistservice.findAll();
		}else{
			list = productlistservice.findAllByType(id);
		}
		switch(id){
		case 0:
			session.setAttribute("list", list);
			return "List";			
        case 1:
           session.setAttribute("Europeanlist", list);
           return "List-1";
        case 2:
            session.setAttribute("afternoonlist", list);
            return "List-2";
        case 3:
        	session.setAttribute("giftlist", list);
        	return "List-3";
        default:
           return "index";
        }
	}
}
