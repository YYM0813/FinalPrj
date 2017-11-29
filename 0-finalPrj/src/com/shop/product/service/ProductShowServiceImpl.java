package com.shop.product.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shop.entity.Product;
import com.shop.product.dao.ProductShowDaoImpl;

@Service
@Transactional
public class ProductShowServiceImpl {

	@Resource
	private ProductShowDaoImpl productshowDao;
	
	public Product showProduct(Integer id){
		Product pro = productshowDao.findById(id);
		return pro;
	}
}
