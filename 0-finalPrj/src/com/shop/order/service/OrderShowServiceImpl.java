package com.shop.order.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shop.entity.CartItem;
import com.shop.entity.Order;
import com.shop.order.dao.OrderShowDaoImpl;

@Service
@Transactional
public class OrderShowServiceImpl {
	@Resource
	private OrderShowDaoImpl dao;
	
	public List<CartItem> ordershow(String cid){
		List<Integer> list = new ArrayList<Integer>();
		String[]cids = cid.split(",");
		for(String s:cids){
			System.out.println(s);
				Integer i =Integer.parseInt(s);
				System.out.println(i);
				list.add(i);
		}
		return dao.ordershow(list);
	}
	public List<Order> findOrderById(int id){
		return dao.findOrderById(id);
	}
}
