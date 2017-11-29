package com.shop.product.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.shop.entity.Product;
import com.shop.product.dao.ProductListDaoImpl;

@Service
@Repository
public class ProductListServiceImpl {

	@Resource
	private ProductListDaoImpl productlistdao;
	
	public List<Product> findAll(){
		List<Product> list=new ArrayList<Product>();
		list = productlistdao.findAll();
		return list;
	}
	public List<Product> findAllByType(Integer id) {
		List<Product> list=new ArrayList<Product>();
		list = productlistdao.findAllByType(id);
		return list;
	}
}
