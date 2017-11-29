package com.shop.product.dao;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.shop.entity.Product;

@Repository
public class ProductShowDaoImpl {
	@Resource
	private SessionFactory sessionfactory;
	
	public Product findById(Integer id){
		Product product = sessionfactory.getCurrentSession().get(Product.class,id);
		return product;
	}
}
