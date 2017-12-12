package com.shop.order.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.shop.entity.Order;
import com.shop.order.dao.OrderCommitDaoImpl;

@Service
public class OrderCommitServiceImpl {
	@Resource
	private OrderCommitDaoImpl oc;
	
	public Order addOrder(int uid,String name,String tel,String address){
		return oc.addOrder(uid, name, tel, address);
	}
}
