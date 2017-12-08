package com.shop.product.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.shop.entity.Flavor;
import com.shop.entity.Product;
import com.shop.entity.Size;

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
	
	public List<Flavor> findAllFlavor(){
		List<Flavor> list=new ArrayList<Flavor>();
		Query query =sessionfactory.getCurrentSession().createQuery("from Flavor");
		list = query.list();
		return list;
	}
	public List<Size> findAllSize(){
		List<Size> list=new ArrayList<Size>();
		Query query =sessionfactory.getCurrentSession().createQuery("from Size");
		list = query.list();
		return list;
	}
}
