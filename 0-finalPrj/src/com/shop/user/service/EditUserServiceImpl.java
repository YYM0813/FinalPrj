package com.shop.user.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shop.user.dao.EditUserDaoImpl;

@Service
@Transactional
public class EditUserServiceImpl {
	@Resource
	private EditUserDaoImpl ud;
	
	public int editUserName(String dis,int uid){
		return ud.editUserName(dis, uid);
	}
	public int editUserSex(Integer sex,int uid){
		return ud.editUserSex(sex, uid);
	}
	public int editUserDis(String dis,int uid){
		return ud.editUserDis(dis, uid);
	}
}
