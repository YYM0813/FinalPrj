package com.shop.product.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.shop.product.dao.ProductDeleteDaoImpl;

@Service
public class ProductDeleteServiceImpl {
	@Resource
	private ProductDeleteDaoImpl productdeldao;
	
	public String productDelete(int id){
		return this.productdeldao.deleteProduct(id);
	}
	
}
