package com.shop.cart.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shop.cart.dao.CartOrderConfirmDaoImpl;
import com.shop.entity.Address;
import com.shop.entity.CartItem;

@Service
@Transactional
public class CartOrderConfirmServiceImpl {
	@Resource
	private CartOrderConfirmDaoImpl cocd;
	
	public List<Address> findAddressByUserId(int uid){
		return cocd.findAddressByUserId(uid);
	}
	public void addItem(CartItem ci){
		cocd.addItem(ci);
	}
}
