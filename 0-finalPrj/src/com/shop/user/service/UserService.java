package com.shop.user.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.shop.entity.User;
import com.shop.user.dao.UserDao;

@Service
public class UserService {
	@Resource
	private UserDao userdao;
	/*
	 * 查重用户名
	 * */	
	public Boolean checkUser(String name,User u){
		String username = u.getName();
		if(username.equals(name)){
			return null;//用户名重复，不可以注册
		}else{
			return true;//用户名可用
		}
	}
	/*
	 * 通过电子邮箱查找用户
	 * */
	public User findByEmail(String email){
		User u = this.userdao.findByEmail(email);
		return u;
	}
	/*
	 * 创建用户
	 * */
	public User createUser(String name,String email, String password){
		User u = new User();
		u.setName(name);
		u.setEmail(email);
		u.setPassword(password);
		u.setRole("normal");
		return u;
	}
	
}
