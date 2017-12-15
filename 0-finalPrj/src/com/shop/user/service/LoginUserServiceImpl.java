package com.shop.user.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shop.entity.User;
import com.shop.user.dao.LoginUserDaoImpl;

@Service
@Transactional
public class LoginUserServiceImpl {
	
	@Resource
	private LoginUserDaoImpl loginUserDao;
	
	public int login(String email,String password){
		return loginUserDao.login(email,password);
	}	
}
