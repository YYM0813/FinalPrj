package com.shop.user.dao;

import java.util.HashSet;
import java.util.Set;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.shop.entity.Address;
import com.shop.entity.User;

@Repository
public class AddressUserDaoImpl {
	@Resource
	private SessionFactory sessionfactory;
	
	public Address addAddress(String name,String tel,String address){
		Session session = sessionfactory.getCurrentSession();
		Address home = new Address();
		home.setName(name);
		home.setTel(tel);
		home.setAddress(address);
		session.save(home);
		return home;
	}
	
	public Set<Address> updateUserAddress (int uid,Address a){
		Session session = sessionfactory.getCurrentSession();
		Set<Address> set = new HashSet<Address>();
		Query q = session.createQuery("from User where id = ?");
		q.setParameter(0, uid);
		User u = (User) q.uniqueResult();
		set = u.getAddressmap();
		set.add(a);
		u.setAddressmap(set);
		session.save(u);
		return set;
		
		
	}
	
}
