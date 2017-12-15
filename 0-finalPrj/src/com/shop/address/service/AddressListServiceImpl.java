package com.shop.address.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.shop.address.dao.AddressListDaoImpl;
import com.shop.entity.Address;

@Service
public class AddressListServiceImpl {
	@Resource
	private AddressListDaoImpl dao;
	
	public List<Address> show(int uid){
		return dao.show(uid);
	}
	
	public Address getAddress(int id){
		return dao.getAddress(id);
	}
}
