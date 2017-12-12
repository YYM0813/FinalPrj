package com.shop.user.dao;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.shop.entity.User;

@Repository
public class EditUserDaoImpl {
	@Resource
	private SessionFactory sessionfactory;
	
	public int editUserName(String name,int uid){
		Session session = sessionfactory.getCurrentSession();
		Query query = session.createQuery("update User u set u.name=:name where u.id=:uid");
		query.setString("name", name);
		query.setInteger("uid", uid);
		int i = query.executeUpdate();
		return i;		
	}
	public int editUserSex(Integer sex,int uid){
		Session session = sessionfactory.getCurrentSession();
		Query query = session.createQuery("update User u set u.sex=:sex where u.id=:uid");
		query.setInteger("sex", sex);
		query.setInteger("uid", uid);
		int i = query.executeUpdate();
		return i;		
	}
	public int editUserDis(String dis,int uid){
		Session session = sessionfactory.getCurrentSession();
		Query query = session.createQuery("update User u set u.discription=:dis where u.id=:uid");
		query.setString("dis", dis);
		query.setInteger("uid", uid);
		int i = query.executeUpdate();
		return i;		
	}
}
