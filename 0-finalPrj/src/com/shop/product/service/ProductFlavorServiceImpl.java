package com.shop.product.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.shop.entity.Product;
import com.shop.product.dao.ProductFlavorDaoImpl;

@Service
public class ProductFlavorServiceImpl {
	@Resource
	private ProductFlavorDaoImpl pfdl;
	
	public List<Product> findProByFlavorId(int id){
		return pfdl.findProByFlavorId(id);
	}
}
