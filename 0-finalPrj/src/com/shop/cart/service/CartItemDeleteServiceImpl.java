package com.shop.cart.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shop.cart.dao.CartItemDeleteDaoImpl;

@Service
@Transactional
public class CartItemDeleteServiceImpl {
	@Resource
	private CartItemDeleteDaoImpl cdl;
	
	public String deleteItem(int id){
		return this.cdl.deleteitem(id);		
	}
}
