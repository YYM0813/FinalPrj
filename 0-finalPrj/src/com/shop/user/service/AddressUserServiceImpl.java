package com.shop.user.service;

import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shop.entity.Address;
import com.shop.user.dao.AddressUserDaoImpl;

@Service
@Transactional
public class AddressUserServiceImpl {
	@Resource
	private AddressUserDaoImpl audi;
	
	public Address addAddress(String name,String tel,String address){
		return audi.addAddress(name, tel, address);
	}
	public Set<Address> updateUserAddress (int uid,Address a){
		return audi.updateUserAddress(uid, a);
	}
}
