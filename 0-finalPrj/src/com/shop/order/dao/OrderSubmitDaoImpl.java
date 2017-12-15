package com.shop.order.dao;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.shop.entity.Address;
import com.shop.entity.CartItem;
import com.shop.entity.Order;
import com.shop.entity.User;

@Repository
public class OrderSubmitDaoImpl {
	@Resource
	private SessionFactory sessionfactory;
	
	public Set<CartItem> findCartById(List<Integer> cidlist){
		Set<CartItem> clist = new HashSet<CartItem>();
		Session session = sessionfactory.getCurrentSession();
		for(Integer i :cidlist){
			if(i!=null){
				CartItem ci = session.get(CartItem.class,i );
				clist.add(ci);
			}			
		}
		return clist;
	}
	
	public Address findOrderById(int id){
		Session session = sessionfactory.getCurrentSession();
		Address address = session.get(Address.class, id);
		return address;
	}
	
	public Order submitOrder(String cid,Address address,User u){
		Set<CartItem> cartset = new HashSet<CartItem>();
		Session session = sessionfactory.getCurrentSession();
		Order order = new Order();
			
		
		order.setAddress(address);
		order.setCartitemid(cid);
		order.setUser(u);
		
		session.save(order);
		
		return order;
		
	}
	
}
