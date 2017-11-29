package com.shop.cart.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.shop.cart.dao.CartAddDaoImpl;
import com.shop.entity.Cart;
import com.shop.entity.CartItem;
import com.shop.entity.Product;

@Service
public class CartAddServiceImpl {
	@Resource
	private CartAddDaoImpl cartdao;
	
	public Cart findProduct(int pid,int shopcount,int pskuid){
		Cart pro = this.cartdao.findById(pid,shopcount,pskuid);
		return pro;
	}
	
	
}
