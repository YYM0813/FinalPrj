package com.shop.user.dao;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.shop.entity.User;
@Repository
@Transactional
public class LoginUserDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
		
	public User login(String email){
		Query query = sessionFactory.getCurrentSession().createQuery("from User u where u.email=?");
		query.setParameter(0,email);
		User u = (User) query.uniqueResult();
		if(u==null){
			return null;
		}else{
			return u;
		}
		
	}
}
