package com.shop.product.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.shop.entity.Product;

@Repository
public class ProductListDaoImpl {
	@Resource
	private SessionFactory sessionfactory;
	
	public  List<Product> findAll(){
		List<Product> list=new ArrayList<Product>();
		Query query =sessionfactory.getCurrentSession().createQuery("from Product");
		list = query.list();
		return list;
	}
	
	public List<Product> findAllByType(Integer id){
		List<Product> list=new ArrayList<Product>();
		Query query =sessionfactory.getCurrentSession().createQuery("from Product as p where p.producttype.id=?");
		query.setParameter(0, id);
		list = query.list();
		return list;
	}
}
