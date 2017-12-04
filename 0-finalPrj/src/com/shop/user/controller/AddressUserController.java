package com.shop.user.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shop.entity.Address;
import com.shop.entity.User;
import com.shop.user.service.AddressUserServiceImpl;

@Controller
public class AddressUserController {
	@Resource
	private AddressUserServiceImpl ausi;
	
	@RequestMapping("/addaddress")
	@ResponseBody
	public Map<String,String> addAddress(String name,String tel,String address,HttpSession session){
		Map<String,String> map = new HashMap<String,String>();
		List<Address> addresslist = new ArrayList<Address>();
		Address home = ausi.addAddress(name, tel, address);
		User u = (User)session.getAttribute("loginuser");
		int userid = u.getId();
		Set<Address> set = ausi.updateUserAddress(userid, home);
		Iterator it = set.iterator();
		while(it.hasNext()){
			Address a =  (Address) it.next();
			addresslist.add(a);
		}	
		session.setAttribute("addresslist",addresslist);
		map.put("result", "success");		
		return map;
	}

}
