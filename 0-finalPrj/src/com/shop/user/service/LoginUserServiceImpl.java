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
	
	public int login(String email){
		User u = loginUserDao.login(email);
		if(u==null){
			return -1;
		}else{
			String role = u.getRole();
			if(role.equals("admin")){
					return 1;
			}else{
				return 0;
			}
		}
	}	
}
