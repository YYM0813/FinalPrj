package com.shop.cart.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.shop.entity.Address;

@Repository
public class CartOrderConfirmDaoImpl {
	@Resource
	private SessionFactory sessionfactory;
	
	public List<Address> findAddressByUserId(int uid){
		List<Address> address = new ArrayList<Address>();
		Session session = sessionfactory.getCurrentSession();
		Query query = session.createQuery("from Address a where a.u.id=? ");
		query.setParameter(0, uid);
		address = query.list();
		return address;
	}
}
