package com.shop.user.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.shop.user.dao.UserPasswordDaoImpl;

@Service
public class UserPasswordServiceImpl {
	@Resource
	private UserPasswordDaoImpl dao;
	
	public int repwd(String pwd,Integer id){
		return dao.repwd(pwd, id);
	}
}
