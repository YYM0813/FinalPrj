package com.shop.user.service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shop.entity.User;
import com.shop.user.dao.RegistUserDaoImpl;

@Service
@Transactional
public class RegistUserServiceImpl {
	@Resource
	private RegistUserDaoImpl registUserDao;

	public User regist(String name,String email,String password) {
		User u = this.registUserDao.regist(name,email,password);
		return u;
	}
}
