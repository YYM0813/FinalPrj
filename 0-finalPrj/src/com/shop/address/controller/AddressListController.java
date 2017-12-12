package com.shop.address.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shop.address.service.AddressListServiceImpl;
import com.shop.entity.Address;

@Controller
public class AddressListController {
	@Resource
	private AddressListServiceImpl service;
	
	@RequestMapping("/addressshow")
	public String show(@RequestParam (name="id") int id,HttpSession session){
		List<Address> list = service.show(id);
		session.setAttribute("addlist", list);
		return "address";
	}
}
