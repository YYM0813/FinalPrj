package com.shop.cart.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.shop.cart.dao.CartAddDaoImpl;
import com.shop.entity.CartItem;
import com.shop.entity.Flavor;
import com.shop.entity.Product;
import com.shop.entity.Size;
import com.shop.entity.User;

@Service
public class CartAddServiceImpl {
	@Resource
	private CartAddDaoImpl cartdao;
	
	public Product findProduct(int pid){
		Product pro = this.cartdao.findById(pid);
		return pro;
	}
	public Size findSizeByName(String size){
		return this.cartdao.findSizeByName(size);
	}
	public Flavor findFlavorByName(String flavor){
		return this.cartdao.findFlavorByName(flavor);
	}
}
