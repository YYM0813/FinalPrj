package com.shop.product.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.shop.entity.Flavor;
import com.shop.entity.Product;
import com.shop.entity.Size;
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
	public List<Flavor> findAllFlavor(){
		List<Flavor> list=new ArrayList<Flavor>();
		list = productlistdao.findAllFlavor();
		return list;
	}
	public List<Size> findAllSize(){
		List<Size> list=new ArrayList<Size>();
		list = productlistdao.findAllSize();
		return list;
	}
}
