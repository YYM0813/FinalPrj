package com.shop.product.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

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
		Flavor f = sessionfactory.getCurrentSession().get(Flavor.class, id);
		for(Product p:f.getMap()){
			list.add(p);
		}
		return list;
		
		
	}
}
