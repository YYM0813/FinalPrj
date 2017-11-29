package com.shop.cart.dao;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.shop.entity.CartItem;

@Repository
public class CartItemDeleteDaoImpl {
	@Resource
	private SessionFactory sessionfactory;
	
	public String deleteitem(int cid){
		Session session  = sessionfactory.getCurrentSession();
		CartItem ci = session .get(CartItem.class, cid);
		session.delete(ci);
		return "success";		
	}
	
}