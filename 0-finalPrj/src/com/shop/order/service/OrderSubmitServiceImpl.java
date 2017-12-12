package com.shop.order.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.shop.entity.Address;
import com.shop.entity.CartItem;
import com.shop.entity.Order;
import com.shop.entity.User;
import com.shop.order.dao.OrderSubmitDaoImpl;

@Service
public class OrderSubmitServiceImpl {
	@Resource
	private OrderSubmitDaoImpl osdi;
	
	public Order submitOrder(List<CartItem> cartitem,String name,String tel,String address,User u){
		return osdi.submitOrder(cartitem, name, tel, address, u);
	}
}
