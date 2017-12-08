package com.shop.cart.dao;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.shop.entity.Flavor;
import com.shop.entity.Product;
import com.shop.entity.Size;

@Repository
public class CartAddDaoImpl {
	@Resource
	private SessionFactory sessionfactory;
	
	public Product findById(int pid){
		Session session = this.sessionfactory.getCurrentSession();
		Product p = session.get(Product.class,pid);
		return p;
	}
	public Size findSizeByName(String size){
		Session session = this.sessionfactory.getCurrentSession();
		Query query = session.createQuery("from Size where name = ?");
		query.setParameter(0, size);
		Size s = (Size) query.uniqueResult();
		return s;
	}
	public Flavor findFlavorByName(String flavor){
		Session session = this.sessionfactory.getCurrentSession();
		Query query = session.createQuery("from Flavor where name = ?");
		query.setParameter(0, flavor);
		Flavor s = (Flavor) query.uniqueResult();
		return s;
	}
}
