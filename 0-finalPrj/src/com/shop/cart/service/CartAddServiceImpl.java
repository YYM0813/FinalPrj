package com.shop.cart.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.shop.cart.dao.CartAddDaoImpl;
import com.shop.entity.CartItem;
import com.shop.entity.Product;
import com.shop.entity.User;

@Service
public class CartAddServiceImpl {
	@Resource
	private CartAddDaoImpl cartdao;
	
	public Product findProduct(int pid,int shopcount,int pskuid,User u){
		Product pro = this.cartdao.findById(pid,shopcount,pskuid,u);
		return pro;
	}
	
	
}
