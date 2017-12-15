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

import com.shop.entity.Product;
import com.shop.entity.Size;

@Repository
public class ProductSizeDaoImpl {
	@Resource
	private SessionFactory sessionfactory;
	
	public List<Product> findProductById(int id){
		List<Product> list = new ArrayList<Product>();
		Set<Product> set = new HashSet<Product>();
		Session session = sessionfactory.getCurrentSession();
		Query query = session.createQuery("from Size where id = ?");
		query.setParameter(0, id);
		Size f = (Size) query.uniqueResult();
		set = f.getSet();
		for(Product p:set){
			System.out.println(p.getName());
			list.add(p);
		}
		return list;
	}
	
}
