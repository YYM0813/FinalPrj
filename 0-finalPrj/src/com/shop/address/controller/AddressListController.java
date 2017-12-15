package com.shop.address.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.portlet.bind.annotation.ResourceMapping;

import com.shop.address.service.AddressListServiceImpl;
import com.shop.entity.Address;

@Controller
public class AddressListController {
	@Resource
	private AddressListServiceImpl service;
	
	@RequestMapping("/addressshow")
	public String show(@RequestParam (name="id") int id,HttpServletRequest request){
		List<Address> list = service.show(id);
		request.setAttribute("addlist", list);
		return "address";
	}
	
	@ResourceMapping("/addressedit")
	public String edit(@RequestParam (name="id") int id,HttpServletRequest request){
		Address address= service.getAddress(id);
		request.setAttribute("useradd", address);
		return "edit";
	}
}
