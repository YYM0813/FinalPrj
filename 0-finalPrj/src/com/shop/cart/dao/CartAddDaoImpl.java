package com.shop.cart.dao;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.shop.entity.CartItem;
import com.shop.entity.Product;
import com.shop.entity.User;

@Repository
public class CartAddDaoImpl {
	@Resource
	private SessionFactory sessionfactory;
	
	public Product findById(int pid,int shopcount,int pskuid,User u){
		Session session = this.sessionfactory.getCurrentSession();
		Product p = session.get(Product.class,pid);
		CartItem item = new CartItem();
		item.setCount(shopcount);
		item.setProduct(p);
		item.setPskuid(pskuid);
		session.save(item);
		return p;
	}
}
