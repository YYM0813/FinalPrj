package com.shop.order.dao;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.shop.entity.Address;
import com.shop.entity.Order;
import com.shop.entity.User;

@Repository
public class OrderCommitDaoImpl {

	@Resource
	private SessionFactory sessionfactory;
	
	public Order addOrder(int uid,String name,String tel,String address){
		Session session = sessionfactory.getCurrentSession();
		User u = session.get(User.class, uid);
		Order o = new Order();
		Address add = new Address();
		add.setAddress(address);
		add.setName(name);
		add.setTel(tel);
		o.setAddress(add);
		o.setUser(u);
		session.save(o);
		return o;
	}
}
