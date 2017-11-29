package com.shop.cart.dao;

import java.util.HashSet;
import java.util.Set;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.shop.entity.Cart;
import com.shop.entity.CartItem;
import com.shop.entity.Product;

@Repository
public class CartAddDaoImpl {
	@Resource
	private SessionFactory sessionfactory;
	
	public Cart findById(int pid,int shopcount,int pskuid){
		Set<CartItem> set = new HashSet<CartItem>();
		Session session = this.sessionfactory.getCurrentSession();
		Product p = session.get(Product.class,pid);
		CartItem ci = new CartItem();
		ci.setProduct(p);
		ci.setCount(shopcount);
		ci.setPskuid(pskuid);
		set.add(ci);
		Cart cart = new Cart();
		cart.setItems(set);
		session.save(ci);
		session.save(cart);
		return cart;
	}
}
