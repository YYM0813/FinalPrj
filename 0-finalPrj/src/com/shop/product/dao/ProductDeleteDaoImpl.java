package com.shop.product.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.annotations.Source;
import org.springframework.stereotype.Repository;

import com.shop.entity.CartItem;

@Repository
public class ProductDeleteDaoImpl {
	@Source
	private SessionFactory sessionfactory;
	
	public String deleteProduct(int cid){
		Session session = sessionfactory.getCurrentSession();
		CartItem ci = session.get(CartItem.class, cid);
		session.delete(ci);
		return "success";
	}
}
