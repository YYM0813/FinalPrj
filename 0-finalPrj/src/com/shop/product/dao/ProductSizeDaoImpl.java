package com.shop.product.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.shop.entity.Product;

@Repository
public class ProductSizeDaoImpl {
	@Resource
	private SessionFactory sessionfactory;
	
	public List<Product> findProductById(int id){
		Session session = sessionfactory.getCurrentSession();
		Query query = session.createQuery("from Product p join p.flavor f where f.id = ?");
		query.setParameter(0, id);
		List<Product>list = query.list();
		for(Product p:list){
			System.out.println(p.getEnglishname());
		}
		return list;
	}
	
}
