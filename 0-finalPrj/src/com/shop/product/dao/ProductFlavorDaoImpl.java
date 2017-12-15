package com.shop.product.dao;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.shop.entity.Flavor;
import com.shop.entity.Product;

@Repository
public class ProductFlavorDaoImpl {
	@Resource
	private SessionFactory sessionfactory;
	
	public List<Product> findProByFlavorId(int id){
		List<Product> list = new ArrayList<Product>();
		Set<Product> set = new HashSet<Product>();
		Session session = sessionfactory.getCurrentSession();
		Query query = session.createQuery("from Flavor where id = ?");
		query.setParameter(0, id);
		Flavor f = (Flavor) query.uniqueResult();
		set = f.getMap();
		for(Product p:set){
			System.out.println(p.getName());
			list.add(p);
		}
		return list;
	}
}
