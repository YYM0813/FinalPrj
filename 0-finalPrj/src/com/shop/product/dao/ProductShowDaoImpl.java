package com.shop.product.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.shop.entity.Flavor;
import com.shop.entity.Product;
import com.shop.entity.Size;

@Repository
public class ProductShowDaoImpl {
	@Resource
	private SessionFactory sessionfactory;
	
	public Product findById(Integer id){
		Product product = sessionfactory.getCurrentSession().get(Product.class,id);
		return product;
	}
	public List<Flavor> findFlavorById(int id){
		List<Flavor> list= new ArrayList<Flavor>();
		Product product = sessionfactory.getCurrentSession().get(Product.class,id);
		Set<Flavor> set = product.getFlavor();
		for(Flavor f:set){
			list.add(f);
		}
		return list;
	}
	
	public List<Size> findSizeById(int id){
		List<Size> list= new ArrayList<Size>();
		Product product = sessionfactory.getCurrentSession().get(Product.class,id);
		Set<Size> set = product.getSize();
		for(Size f:set){
			list.add(f);
		}
		return list;
	}
}
