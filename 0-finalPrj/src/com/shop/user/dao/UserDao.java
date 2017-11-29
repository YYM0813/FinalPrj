package com.shop.user.dao;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.shop.entity.User;

@Repository
public class UserDao {
	@Resource
	private SessionFactory sessionfactory;
	
	public User findByEmail(String email){
		Query query = sessionfactory.getCurrentSession().createQuery("from User where email=?");
		query.setParameter(0, email);
		User u = (User) query.uniqueResult();
		return u;
	}
	
}
