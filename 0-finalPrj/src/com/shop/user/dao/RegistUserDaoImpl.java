package com.shop.user.dao;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.shop.entity.User;

@Repository
public class RegistUserDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	
	public User regist(String name,String email,String password){
		User u = new User();
		u.setEmail(email);
		u.setName(name);
		u.setPassword(password);
		u.setRole("aaa");
		sessionFactory.getCurrentSession().save(u);
		return u;
	}
	
}
