package com.shop.order.service;

import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shop.entity.Address;
import com.shop.entity.CartItem;
import com.shop.entity.Order;
import com.shop.entity.User;
import com.shop.order.dao.OrderSubmitDaoImpl;

@Service
@Transactional
public class OrderSubmitServiceImpl {
	@Resource
	private OrderSubmitDaoImpl osdi;
	
	public Address findOrderById(int id){
		return osdi.findOrderById(id);
		
	}
	public Order submitOrder(String cid,Address address,User u){
		return osdi.submitOrder(cid, address, u);
	}
	
	public Set<CartItem> findCartById(List<Integer> cidlist){
		return osdi.findCartById(cidlist);
	}
}
