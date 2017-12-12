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
	
	public Order submitOrder(List<CartItem> cartitem,String name,String tel,String address,User u){
		Set<CartItem> cartset = new HashSet<CartItem>();
		Session session = sessionfactory.getCurrentSession();
		Order order = new Order();
		Query query = session.createQuery("from Address where u.id = ?");
		query.setParameter(0, u.getId());
		List<Address> addlist = query.list();
		for(Address add : addlist){
			if(add.getAddress().equals(address)&&add.getTel().equals(tel)&&add.getName().equals(name)){
				order.setAddress(add);
			}
		}
		for(CartItem c:cartitem){
			cartset.add(c);
		}
		order.setCartitem(cartset);
		order.setUser(u);
		
		session.save(order);
		return order;
		
	}
	
}
