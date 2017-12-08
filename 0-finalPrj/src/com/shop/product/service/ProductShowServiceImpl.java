package com.shop.product.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shop.entity.Flavor;
import com.shop.entity.Product;
import com.shop.entity.Size;
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
	
	public List<Flavor> findFlavorById(int id){
		return productshowDao.findFlavorById(id);
	}
	public List<Size> findSizeById(int id){
		return productshowDao.findSizeById(id);
	}
}
