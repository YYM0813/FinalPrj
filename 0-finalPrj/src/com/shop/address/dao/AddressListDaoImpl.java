package com.shop.address.dao;

import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.shop.entity.Address;

@Repository
public class AddressListDaoImpl {
	@Resource
	private SessionFactory sessionfactory;
	
	public List<Address> show(int uid){
		Session session = sessionfactory.getCurrentSession();
		Query query = session.createQuery("from Address a where a.u.id = ?");
		query.setParameter(0, uid);
		List<Address>list = query.list();
		return list;
	}
}
