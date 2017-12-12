package com.shop.user.dao;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

@Repository
public class UserPasswordDaoImpl {
	@Resource
	private SessionFactory sessionfactory;
	
	public int repwd(String pwd,Integer id){
		Session session = sessionfactory.getCurrentSession();
		Query query = session.createQuery("update User u set u.password=:pwd where u.id=:id");
		query.setString("pwd", pwd);
		query.setInteger("id", id);
		int line = query.executeUpdate();
		return line;
	}
}
