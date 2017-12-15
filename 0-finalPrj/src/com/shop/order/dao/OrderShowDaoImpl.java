package com.shop.order.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.shop.entity.CartItem;
import com.shop.entity.Order;

@Repository
public class OrderShowDaoImpl {
	@Resource
	private SessionFactory sessionfactory;
	
	public List<CartItem> ordershow(List<Integer> cid){
		Session session = sessionfactory.getCurrentSession();
		List<CartItem>clist = new ArrayList<CartItem>();
		for(Integer i:cid){
			if(null!=i){
				CartItem c = session.get(CartItem.class, i);
				clist.add(c);
			}			
		}
		return clist;
	}
	
	public List<Order> findOrderById(int id){
		List<Order>orderlist = new ArrayList<Order>();
		Session session = sessionfactory.getCurrentSession();
		Query query = session.createQuery("from Order o where o.user.id=?");
		query.setParameter(0, id);
		orderlist = query.list();
		return orderlist;
	}
}
