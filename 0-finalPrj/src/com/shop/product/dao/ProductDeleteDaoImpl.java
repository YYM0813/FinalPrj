package com.shop.product.dao;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDeleteDaoImpl {
	@Resource
	private SessionFactory sessionfactory;
	
	public String deleteProduct(int cid){
		Session session = sessionfactory.getCurrentSession();
		Query query = session.createQuery("delete CartItem where id=?");
		query.setParameter(0, cid);
		int line = query.executeUpdate();
		if(line==1){
			return "success";
		}else{
			return "fail";
		}
		
	}
}
