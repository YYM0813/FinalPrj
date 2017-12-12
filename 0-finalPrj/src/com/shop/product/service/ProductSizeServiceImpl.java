package com.shop.product.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.shop.entity.Product;
import com.shop.product.dao.ProductSizeDaoImpl;

@Service
public class ProductSizeServiceImpl {
	@Resource
	private ProductSizeDaoImpl psdi;
	
	public List<Product> findProductById(int id){
		return psdi.findProductById(id);
	}
}
